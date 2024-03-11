# Flutter/Swift App CI/CD Pipeline

This project demonstrates a CI/CD pipeline using GitHub Actions for a cross-platform Flutter/Swift application. The pipeline covers automated testing, building, and releasing the application to Artifactory with dynamic versioning.

## CI/CD Status Badges

![Tests](https://github.com/oleksandr-g-rock/Flutter_app/actions/workflows/flutter_pipeline.yml/badge.svg?branch=test-branch)
![Build](https://github.com/oleksandr-g-rock/Flutter_app/actions/workflows/flutter_pipeline.yml/badge.svg?branch=test-branch)
![Release Status](https://github.com/oleksandr-g-rock/Flutter_app/actions/workflows/flutter_pipeline.yml/badge.svg?branch=test-branch)
![Release number](https://api.github.com/repos/oleksandr-g-rock/Flutter_app/releases/latest)


Replace `oleksandr-g-rock/Flutter_app` with your GitHub information and `<ARTIFACTORY_URL>` with the URL to your Artifactory release metadata, which should return JSON containing a `version` field.

## How to Run the GitHub Action Pipeline

1. **Push to the `test-branch`**: The pipeline is triggered by a push to the `test-branch`. Make your changes and push them to this branch.
2. **Automated Tests**: The pipeline will automatically run unit and integration tests across multiple platforms (iOS, macOS, Chrome, Android).
3. **Build**: If tests pass, the app is built for all specified platforms.
4. **Release**: Successful builds trigger the creation of a new release, which is then uploaded to Artifactory.

## Experience and Challenges

- **Automated Testing**: Setting up cross-platform testing was challenging, particularly ensuring that the environment for each platform was correctly configured. Using matrix strategies helped run tests in parallel.
- **Artifactory Integration**: Publishing releases to Artifactory required careful setup of repository and artifact configurations to ensure that builds were correctly versioned and stored.
- **Documentation**: Writing clear and concise instructions in the README.md was essential for making the pipeline understandable and easy to use.

## Conclusion

This project showcases a fully automated CI/CD pipeline for a Flutter app, leveraging GitHub Actions for seamless testing, building, and releasing. The process emphasized the importance of automation in modern app development, significantly reducing manual efforts and potential human errors.

