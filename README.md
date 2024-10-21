# last_updates

bash script to list last updates on girhub repositories and another projects

the script to list just the folder and date of modification in the results, and sort them in ascending order by date
sorts the results by the modification time (in seconds since epoch) and then formats the date to YYYY-MM-DD format.

To use this updated script:


2. Make it executable with the command: `chmod +x list_recent_readmes.sh`.
3. Run it with specific path and depth:
   `./list_recent_readmes.sh /path/to/your/directory 5`
4. Or run it with just a path to use the default depth of 3:
   `./list_recent_readmes.sh /path/to/your/directory`
5. Or run it without arguments to use both default path "github" and default depth 3:
   `./list_recent_readmes.sh`

The output will now be in the format:

```
YYYY-MM-DD /path/to/folder
```

Sorted in ascending order by date (oldest to newest).
Each folder will appear only once, with the date of its most recently modified README.md file.

