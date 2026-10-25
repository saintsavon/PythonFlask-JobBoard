# Build a Job Board with Python & Flask

## Supported runtime

The draft container uses Python 3.13.17 and a hash-locked Flask 3 dependency set. Local development can use `python -m pip install --require-hashes -r requirements.txt`. Tests need their separate dependency lock: `python -m pip install --require-hashes -r requirements-test.lock`, then `python -m pytest tests/test_runtime_smoke.py`.

Release gate (October 25, 2026): Python 3.13.18 was released with security fixes after this draft was prepared. It is source-only, and an official 3.13.18 Docker image and GitHub Actions Python build were not yet available. Keep this draft unmerged until a supported official image and CI runtime containing those fixes are selected and the lockfiles and smoke test are rechecked. Python 3.13.17 is not the final security target.

The original course exercise tests cover features that are not implemented in this starter app. The full suite is expected to fail until those exercises are completed. Keep local `.env` files outside container images; `.dockerignore` excludes them.

## Verify Local Environment

### Create Virtual Environment

In a terminal run the following commands from the root folder of the forked project. 

Windows
```
python -m venv .\venv
```

macOS & Linux
```
python -m venv ./venv
```

Once that completes, also run this command from the same folder.

Windows
```
venv\Scripts\activate.bat
```

macOS & Linux
```
source venv/bin/activate
```

Now that you are working in the virtualenv, install the runtime and test dependencies with the following commands.

```
python -m pip install --require-hashes -r requirements.txt
python -m pip install --require-hashes -r requirements-test.lock
```

### Verify Setup

In order to verify that everything is setup correctly, run the following command, which should show you the failing tests. This is good! We'll be fixing this test once we jump into the build step.

```
python -m pytest
```

Every time you want to check your work locally you can type that command, and it will report the status of every task in the project.

### Previewing Your Work

You can preview your work by running `flask run` in the root of your fork and then visit`http://localhost:5000` in your browser.
