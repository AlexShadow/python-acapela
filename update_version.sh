#
# Usage:
#   ./update_version.sh 0.2.3
#

sed -i -e "s/__version__ = '.*'/__version__ = '$1'/g" acapela.py
sed -i -e "s/version = '.*'/version = '$1'/g" docs/source/conf.py
#rm -rf docs/html
#python setup.py develop
#make docs
#git commit docs admin_tools_stats/__init__.py -m "Update to version v$1"
git commit -a -m "Update to version v$1"
git push
python setup.py sdist upload -r pypi
