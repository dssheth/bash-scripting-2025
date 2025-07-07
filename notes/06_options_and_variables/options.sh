while [ -n "$(echo $1 | grep '-')" ];do 
    case $1 in
        -a) echo "Hello" ;;
        -b) echo "Your Name: $2"
            shift ;;
        -c) echo "The files are ready." ;;
        *) echo "usage: albums.txt [-a] [-b arg] [-c] args...";
            exit 1;;
    esac
    shift 
done

echo "Shifting done and the files are: $@"