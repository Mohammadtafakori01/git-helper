# Git Helper

This script automates common Git operations such as committing and pushing changes, merging branches, and creating and pushing tags. It is designed to streamline your workflow by providing a simple menu-based interface.

## Features

- **Commit and Push**: Stage all changes, commit with a message, and push to a specified branch.
- **Merge and Update**: Merge one branch into another after pulling the latest changes from the remote repository.
- **Create Tag and Push**: Create a new annotated tag and push it to the remote repository.

## Usage

### Prerequisites

- Ensure that Git is installed on your system and accessible via the command line.
- Clone the repository or place the script in your desired directory.

### Running the Script

1. Open a command prompt or terminal window.
2. Navigate to the directory where the script is located.
3. Run the script by typing:

    ```sh
    script_name.bat
    ```

### Menu Options

Upon running the script, you will be presented with a menu to choose from the following options:

1. **Commit and Push**: 
    - Enter the commit message.
    - Enter the branch to commit to.
    - The script will add all changes, commit with the provided message, and push to the specified branch.

2. **Merge and Update**:
    - Enter the current branch name.
    - Enter the branch to merge with.
    - The script will pull the latest changes from the `dev` branch, merge the specified branch into the current branch, and notify you of the successful merge.

3. **Create Tag and Push**:
    - Enter the tag name.
    - Enter the tag message.
    - The script will create an annotated tag with the provided name and message, and push it to the remote repository.

### Example

```sh
Select an option:
1- Commit and Push
2- Merge and Update
3- Create Tag and Push
Enter your choice (1, 2, or 3): 1
Enter commit message: Initial commit
Enter branch to commit to: main
