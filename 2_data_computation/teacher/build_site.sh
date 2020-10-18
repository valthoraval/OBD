#/usr/bin/sh
rm -r ../site

cd slides

reveal-md . \
        --template static/template/reveal.html \
        --listing-template static/template/listing.html \
        --css static/css/evo.css \
        --css static/css/reset.css \
        --static-dirs static \
        --static ../docs/lectures/

cp 0_index.html ../docs/lectures/index.html

cd ..

mkdocs build

rm -r docs/lectures
