# create apps.txt with all Dock apps
dockutil -L | awk '{print }' > apps.txt

# create app_list.txt with all installed applications
ls /Applications | xargs -I {} echo /Applications/{} >> app_list.txt

# create system_app_list.txt with all system applications
ls /System/Applications/Utilities | xargs -I {} echo /System/Applications/Utilities/{} >> system_app_list.txt

# now you should manually create a chosen_apps.txt file
# with the names of the apps you want to add to your Dock
# then run the following command:
cat chosen_apps.txt | xargs -I {} dockutil --add {}


