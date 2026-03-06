import streamlit as st

prompt = st.chat_input('Type your message')
if prompt:
    st.write(f"User Message:",prompt)

with st.chat_message('user'):
    st.write("Hello There")