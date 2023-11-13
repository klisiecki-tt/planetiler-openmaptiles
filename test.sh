layers=(aerodrome_label aeroway building landcover landuse mountain_peak park place poi water water_name waterway border)
#layers=(landcover)

area=czech-republic

for layer in ${!layers[*]}
do
  layer_name=${layers[$layer]}
  printf "${layer_name}\n"
  java -jar target/*with-deps.jar --force --download --area=${area} --only-layers=${layer_name} --output data/${area}/${layer_name}.mbtiles
done