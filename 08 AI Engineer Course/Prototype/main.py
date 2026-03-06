from openai import OpenAI
import streamlit as st

# Page config
st.set_page_config(page_title="Streamlit Chat", page_icon="💬")
st.title("AI Interview Chatbot")

# Session state
if "setup_complete" not in st.session_state:
    st.session_state.setup_complete = False

def complete_setup():
    st.session_state.setup_complete = True


# =============================
# Setup Section
# =============================
if not st.session_state.setup_complete:

    st.subheader('Personal Information', divider='rainbow')

    st.session_state["name"] = st.text_input(
        "Name", value=st.session_state.get("name","")
    )

    st.session_state["experience"] = st.text_area(
        "Experience", value=st.session_state.get("experience","")
    )

    st.session_state["skills"] = st.text_area(
        "Skills", value=st.session_state.get("skills","")
    )

    st.subheader('Company and Position', divider='rainbow')

    col1, col2 = st.columns(2)

    with col1:
        st.session_state["level"] = st.radio(
            "Choose level",
            ["Junior","Mid-level","Senior"]
        )

    with col2:
        st.session_state["position"] = st.selectbox(
            "Position",
            ["Data Scientist","Data Engineer","ML Engineer","BI Analyst"]
        )

    st.session_state["company"] = st.selectbox(
        "Company",
        ["Amazon","Meta","LinkedIn","Spotify","Nestle"]
    )

    if st.button("Start Interview", on_click=complete_setup):
        st.success("Setup complete!")



# =============================
# Interview Chat Section
# =============================
if st.session_state.setup_complete:

    st.info("Introduce yourself to start the interview.", icon="👋")

    # OpenRouter client
    client = OpenAI(
        base_url="https://openrouter.ai/api/v1",
        api_key=st.secrets["OPENROUTER_API_KEY"],
    )

    # Choose an OpenRouter model
    if "openai_model" not in st.session_state:
        st.session_state.openai_model = "openai/gpt-4o-mini"

    # Initialize conversation
    if "messages" not in st.session_state:

        system_prompt = f"""
        You are an HR interviewer.

        Candidate Name: {st.session_state['name']}
        Experience: {st.session_state['experience']}
        Skills: {st.session_state['skills']}

        Interview them for:
        {st.session_state['level']} {st.session_state['position']} role at {st.session_state['company']}.

        Ask professional interview questions one by one.
        """

        st.session_state.messages = [{
            "role": "system",
            "content": system_prompt
        }]

    # Display chat history
    for msg in st.session_state.messages:
        if msg["role"] != "system":
            with st.chat_message(msg["role"]):
                st.markdown(msg["content"])


    # User input
    if prompt := st.chat_input("Your answer..."):

        st.session_state.messages.append({"role":"user","content":prompt})

        with st.chat_message("user"):
            st.markdown(prompt)


        # AI response
        with st.chat_message("assistant"):

            stream = client.chat.completions.create(
                model=st.session_state.openai_model,
                messages=st.session_state.messages,
                stream=True,
                extra_headers={
                    "HTTP-Referer": "http://localhost:8501",
                    "X-Title": "Interview Chatbot"
                }
            )

            response = st.write_stream(stream)

        st.session_state.messages.append({
            "role":"assistant",
            "content":response
        })