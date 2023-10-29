# Knowledge Base

## Video editing


### How to concatenate  to video files

```
:: Create File List
echo file file1.mp4 >  mylist.txt 
echo file file2.mp4 >> mylist.txt
echo file file3.mp4 >> mylist.txt

:: Concatenate Files
ffmpeg -f concat -i mylist.txt -c copy output.mp4
```

https://stackoverflow.com/questions/7333232/how-to-concatenate-two-mp4-files-using-ffmpeg

Ii didn't work!
