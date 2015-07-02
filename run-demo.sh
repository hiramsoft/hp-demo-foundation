# To test the sample:

# Note You have to use a known good configuration
# Zurb Foundation is known for breaking master
# You may need to check out a specific version and run this script...

bundle install
npm install
bower install
grunt build
cp ./hp-bridge.html ./dist/docs/
aws s3 sync ./dist/docs s3://demo1.hirampages.com --delete
