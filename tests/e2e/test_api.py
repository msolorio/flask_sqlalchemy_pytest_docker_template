import requests

from app import config


def test_app_running():
    url = config.get_api_url()

    r = requests.get(f"{url}/health")

    assert r.status_code == 200
    assert r.text == "OK"
