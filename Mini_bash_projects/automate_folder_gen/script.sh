#!/bin/bash

# Function to ask yes/no and return 0 for yes, 1 for no
ask_yes_no() {
    while true; do
        read -p "$1 (y/n): " choice
        case "$choice" in
            y|Y ) return 0 ;;
            n|N ) echo "⏩ Skipped." 
                  return 1 ;;
            * ) echo "Invalid choice. Please answer y or n." ;;
        esac
    done
}

# Show usage if needed
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage: $0"
    echo "A CLI tool to create a web project interactively."
    exit 0
fi

# Ask for project name
echo -n "Enter Project Name: "
read projectname

# Create root folder
mkdir -p "$projectname"
echo "✅ Root folder '$projectname' created."

cd "$projectname"

# Ask to create index.html
if ask_yes_no "Do you want to create 'index.html'?"; then
    touch index.html
    echo "📄 index.html created."
fi

# Ask to create MVC folders
if ask_yes_no "Do you want to create 'model' folder?"; then
    mkdir -p model
    echo "📁 'model' folder created."
fi

if ask_yes_no "Do you want to create 'controller' folder?"; then
    mkdir -p controller
    echo "📁 'controller' folder created."
fi

if ask_yes_no "Do you want to create 'views' folder with subfolders (css/js/img)?"; then
    mkdir -p views
    cd views

    if ask_yes_no "  ➤ Create 'css' folder with main.css file?"; then
        mkdir -p css
        touch css/main.css
        echo "📄 main.css created inside css/"
    fi

    if ask_yes_no "  ➤ Create 'js' folder with app.js file?"; then
        mkdir -p js
        touch js/app.js
        echo "📄 app.js created inside js/"
    fi

    if ask_yes_no "  ➤ Create 'img' folder?"; then
        mkdir -p img
        echo "📁 'img' folder created."
    fi

    cd ..
    echo "📁 'views' folder setup complete."
fi

echo "🎉 Project '$projectname' has been successfully created!"
