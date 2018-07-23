# domivca-backup
automatic back up to dropbox for phpbb forum
### To set up backups to dropbox
- Go to backup folder. Copy `.dropbox_uploader.distr` into `.dropbox_uploader`
- Open [the following URL](https://www.dropbox.com/developers/apps) in your Browser, and log in using your account
- Click on `Create App`, then select `Dropbox API app`
- Now go on with the configuration, choosing the app permissions and access restrictions to your DropBox folder
- Enter the `App Name` that you prefer (e.g. MyUploader3196922415454)
- Now, click on the `Create App` button.
- When your new App is successfully created, please click on the `Generate` button under the `Generated access token` section, then copy and paste the new access token into corresponding variable in `.dropbox_uploader` file. Define your dropbox backups folder there.
- Add `.do_backup.sh` to your daily cron
