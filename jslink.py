import requests
from bs4 import BeautifulSoup

def linkedin_jobs(keyword, location):
    urlhfbhvsh = "https://www.linkedin.com/jobs-guest/jobs/api/seeMoreJobPostings/search"
    
    params = {
        "keywords": keyword,
        "location": location,
        "start": 0
    }

    headers = {
        "User-Agent": "Mozilla/5.0"
    }

    response = requests.get(url, params=params, headers=headers)
    soup = BeautifulSoup(response.text, "html.parser")

    jobs = []

    for job_card in soup.find_all("li"):
        title = job_card.find("h3")
        company = job_card.find("h4")
        link = job_card.find("a")

        if title and company and link:
            jobs.append({
                "title": title.text.strip(),
                "company": company.text.strip(),
                "link": "https://www.linkedin.com" + link['href']
            })

    return jobs


if __name__ == "__main__":
    jobs = linkedin_jobs("frontend fresher", "Surat, Gujarat, India")

    for job in jobs:
        print("Title:", job["title"])
        print("Company:", job["company"])
        print("Link:", job["link"])
        print("-" * 50)