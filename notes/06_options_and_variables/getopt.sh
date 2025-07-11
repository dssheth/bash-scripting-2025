while getopts ":ab:c" opt; do
    case $opt in
        a ) echo "Hello! The option 'a' is working"
        ;;
        b ) echo "The name is: $OPTARG"
            #$OPTARG is the option's argument
        ;;
        c ) echo "The files are ready."
        ;;
        \? ) echo "usage: alice [-a] [-b barg] [-c] args"
            exit 1
    esac
done
shift $(($OPTIND - 1))

# Remaining args can be treated as input files
echo "Shifting done and the files are: $@"


