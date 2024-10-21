# script to list of recent updated projects


This bash script `list_recent_readmes.sh` scans a specified directory structure for README.md files, providing a sorted list of folders that contain these files.

1. It searches for README.md files within a given directory, up to a specified depth (default is 3 levels deep).
2. For each folder containing a README.md file, it records the most recent modification date of that file.
3. The results are then sorted chronologically, from oldest to newest, based on these modification dates.
4. The output is presented in a clean format: "YYYY-MM-DD /path/to/folder"
5. Each folder appears only once in the results, showing the date of its most recently modified README.md file.


## Why

This tool is particularly useful for quickly identifying which parts of a project or repository have had recent documentation updates, helping with project management, code reviews, and maintaining up-to-date documentation across multiple projects or components.
By providing a quick and automated way to survey documentation updates across a complex project structure, this script saves time and helps maintain a more organized and up-to-date project ecosystem.
The script's flexibility in terms of search depth and directory makes it adaptable to various project structures and organizational needs. 
Its sorting capability allows for quick identification of the most recent changes, which is often the most relevant information in many of these scenarios.


## Where

1. Project Management:
- It allows project managers or team leads to quickly identify which projects or components have been recently updated.
- This can help in tracking progress across multiple projects or repositories, especially in a large organization with many ongoing initiatives.

2. Code Review and Quality Assurance:
- Developers or QA teams can use this to find projects that have had recent documentation updates.
- It can help prioritize code reviews by focusing on projects with recent changes.

3. Documentation Maintenance:
- Technical writers or documentation teams can use this script to identify which areas of a large codebase or project structure have had recent documentation updates.
- This helps in ensuring that all documentation is up-to-date and consistent across projects.

4. Compliance and Auditing:
- In regulated industries, this script can help track when documentation was last updated, which is often a compliance requirement.
- It provides a quick way to generate reports on documentation currency across multiple projects.

5. Open Source Project Management:
- For maintainers of multiple open source projects, this script can help track which projects have had recent activity in terms of documentation updates.
- It can help identify projects that might need attention or promotion based on recent updates.

6. Onboarding and Knowledge Transfer:
- New team members can use this script to identify recently updated projects, which might be more relevant or active.
- It helps in quickly understanding which parts of a large codebase or project structure have been recently worked on.

7. Archive and Cleanup:
- IT teams can use this to identify old or potentially obsolete projects by looking at those that haven't had documentation updates in a long time.

8. Release Management:
- Release managers can use this to ensure that all necessary documentation has been updated before a release by checking for recent README updates in relevant components.

9. Continuous Integration/Continuous Deployment (CI/CD):
- This script could be integrated into CI/CD pipelines to automatically flag projects that have had documentation changes, triggering appropriate reviews or updates to related materials.

10. Research and Development:
- R&D teams can use this to track which areas of a large research project have had recent documentation updates, helping to focus efforts and avoid duplication of work.




## How


To use this script:

Make it executable with the command: `chmod +x list_recent_readmes.sh`.
Run it with specific path and depth:
`./list_recent_readmes.sh /path/to/your/directory 5`
Or run it with just a path to use the default depth of 3:
`./list_recent_readmes.sh /path/to/your/directory`
Or run it without arguments to use both default path "github" and default depth 3:
`./list_recent_readmes.sh`

The output will now be in the format:

```
YYYY-MM-DD /path/to/folder
```



