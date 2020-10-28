echo 'Generating 4x5 .scad files...'
echo '(load-file "src/dactyl_keyboard/dactyl.clj")' | lein repl > /dev/null 2>&1 
echo 'Rendering 4x5 files...'
cp things/right.scad things/right-4x5.scad
cp things/right-plate-print.scad things/right-4x5-plate-print.scad
cp things/right-plate-cut.scad things/right-4x5-plate-cut.scad
cp things/test.scad things/test-4x5.scad
cp things/test2.scad things/test2-4x5.scad
openscad -o things/right-4x5-plate-cut.dxf things/right-4x5-plate-cut.scad > /dev/null 2>&1 &
openscad -o things/right-4x5-plate-print.stl things/right-4x5-plate-print.scad > /dev/null 2>&1 &
openscad -o things/right-4x5.stl things/right-4x5.scad > /dev/null 2>&1 &

echo 'Generating 4x6 .scad files...'
patch -p1 < 4x6.patch > /dev/null 2>&1 
echo '(load-file "src/dactyl_keyboard/dactyl.clj")' | lein repl > /dev/null 2>&1
echo 'Rendering 4x6 files...'
cp things/right.scad things/right-4x6.scad
cp things/right-plate-print.scad things/right-4x6-plate-print.scad
cp things/right-plate-cut.scad things/right-4x6-plate-cut.scad
cp things/test.scad things/test-4x6.scad
cp things/test2.scad things/test2-4x6.scad
openscad -o things/right-4x6-plate-cut.dxf things/right-4x6-plate-cut.scad > /dev/null 2>&1 &
openscad -o things/right-4x6-plate-print.stl things/right-4x6-plate-print.scad > /dev/null 2>&1 &
openscad -o things/right-4x6.stl things/right-4x6.scad > /dev/null 2>&1 &
git checkout src/dactyl_keyboard/dactyl.clj > /dev/null 2>&1 

echo 'Generating 5x6 .scad files...'
patch -p1 < 5x6.patch > /dev/null 2>&1 
echo '(load-file "src/dactyl_keyboard/dactyl.clj")' | lein repl > /dev/null 2>&1
echo 'Rendering 5x6 files...'
cp things/right.scad things/right-5x6.scad
cp things/right-plate-print.scad things/right-5x6-plate-print.scad
cp things/right-plate-cut.scad things/right-5x6-plate-cut.scad
cp things/test.scad things/test-5x6.scad
cp things/test2.scad things/test2-5x6.scad
openscad -o things/right-5x6-plate-cut.dxf things/right-5x6-plate-cut.scad > /dev/null 2>&1 &
openscad -o things/right-5x6-plate-print.stl things/right-5x6-plate-print.scad > /dev/null 2>&1 &
openscad -o things/right-5x6.stl things/right-5x6.scad > /dev/null 2>&1 &
git checkout src/dactyl_keyboard/dactyl.clj > /dev/null 2>&1 

echo 'Generating 6x6 .scad files...'
patch -p1 < 6x6.patch > /dev/null 2>&1 
echo '(load-file "src/dactyl_keyboard/dactyl.clj")' | lein repl > /dev/null 2>&1
echo 'Rendering 6x6 files...'
cp things/right.scad things/right-6x6.scad
cp things/right-plate-print.scad things/right-6x6-plate-print.scad
cp things/right-plate-cut.scad things/right-6x6-plate-cut.scad
cp things/test.scad things/test-6x6.scad
cp things/test2.scad things/test2-6x6.scad
openscad -o things/right-6x6-plate-cut.dxf things/right-6x6-plate-cut.scad > /dev/null 2>&1 &
openscad -o things/right-6x6-plate-print.stl things/right-6x6-plate-print.scad > /dev/null 2>&1 &
openscad -o things/right-6x6.stl things/right-6x6.scad > /dev/null 2>&1 &
git checkout src/dactyl_keyboard/dactyl.clj > /dev/null 2>&1 

cd things/
rm right.scad right-plate-print.scad right-plate-cut.scad test.scad test2.scad

wait