from jobs.app import app


def test_current_routes_render_with_supported_flask():
    client = app.test_client()
    for path in ("/", "/jobs"):
        response = client.get(path)
        assert response.status_code == 200
        assert b"Jobs" in response.data
