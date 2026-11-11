function selectOptions ()
{
echo "What do you want to do?
- make a new cat (m)
- view my cats(v)
- quit (q)"
read optionToDo

case $optionToDo in
    m)
    make
    ;;

    v)
    view
    ;;

    q)
    quit    
    ;;

    *)
    echo "No options foundet..."
    ;;
esac
}

function make ()
{
    SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
    Cats="$SCRIPT_DIR/Cats"
    
    read -p "Name: " Name 
    > "$Cats/$Name.txt"
    echo "$Name" > "$Cats/$Name.txt"

    read -p "Clan: " Clan 
    echo "Clan: $Clan" >> $Cats/$Name.txt

    read -p "Rank: " rank 
    echo "Rank: $rank" >> $Cats/$Name.txt

    read -p "Favourite Food: " favouriteFood 
    echo "Favourite Food: $favouriteFood" >> $Cats/$Name.txt

    read -p "Mother: " mother 
    echo "Mother: $mother" >> $Cats/$Name.txt

    read -p "Father: " father 
    echo "Father: $father" >> $Cats/$Name.txt

    read -p "Siblings: " siblings
    echo "Siblings: $siblings" >> $Cats/$Name.txt

    read -p "Mate: " mate
    echo "Mate: $mate" >> $Cats/$Name.txt

    read -p "Kits: " kits
    echo "Kits: $kits" >> $Cats/$Name.txt

    read -p "State (Death/Alive): " State 
    echo "State: $State" >> $Cats/$Name.txt

    selectOptions
}

function view ()
{
    SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
    Cats="$SCRIPT_DIR/Cats"
    ls "$Cats"

    selectOptions
}

function quit ()
{
    echo "preparing for exit..."
    echo "farewell, warrior"
    exit 0
}

echo "Welcome to the Warrior Cats Generator, Fellow Warrior"

selectOptions