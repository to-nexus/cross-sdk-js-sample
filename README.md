#### 📚 [Documentation](https://cross.readme.io/update/docs/js/)

# Cross SDK examples

1. Prerequsites
:   - Node.js ^20.18.0
    - pnpm
    - turbo

2. Prepare Environment
:   - Create .env file in project
    ```bash
    cd examples/sdk-react
    touch .env
    ```
    .env file should contain
    ```bash
    VITE_PROJECT_ID=42078dcdaf82730e21910f6c514d118b // use this for test
    VITE_ENV_MODE=development   // development or production
    ```
    - Set PATH for github token
    ```bash
    vi ~/.zshrc

    # add this line on the bottom of file
    export GITHUB_TOKEN=ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

    # save and exit and source the file
    .source ~/.zshrc

    # you need to restart the terminal
    echo $GITHUB_TOKEN  // to see the token is set properly
    ```
3. Install dependencies
:   - Install dependencies on root
    ```bash
    pnpm install
    ```
    - Run as development mode
    ```bash
    cd examples/sdk-react
    npm run dev
    ```