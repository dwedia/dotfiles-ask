for file in _OceanofPDF.com_*; do
  newname="${file#_OceanofPDF.com_}";
  [[ "$file" != "$newname" ]] && mv "$file" "$newname";
done
