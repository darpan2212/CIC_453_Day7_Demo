cnt=0
fruits[((cnt++))]="Mangoes";
fruits[((cnt++))]="Grapes";
fruits[((cnt++))]="Bananas";
fruits[((cnt++))]="Oranges";

echo ${fruits[@]};

echo ${fruits[2]};

echo "Length of an array : "${#fruits[@]}

echo ${!fruits[@]}

veges=("Potato" "Tomato" "Carrot");

echo ${veges[@]};

echo ${veges[2]};
