for files in *.log
do
        date +"%d/%m/%y";
	today=$(date);
	today=`date`;
	echo "$today";
	echo $Toady
        folderName=`echo $files | awk -F. '{print $1}'`;
        echo $files;
        echo $folderName;
        printf "\n";
        if [ -d $folderName ]
        then
                rm -r $folderName;
        fi
        mkdir $folderName;
        cp $files $folderName/$files;
done
