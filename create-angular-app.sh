## Script to create an angular app

echo "Install npm first"

echco "Creating maven project"

mvn archetype:generate -DgroupId=com.paypal.hackathon -DartifactId=ExpenseManager -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false

echo "cleaning the directories"

mkdir -p src/main/java
mkdir -p src/test/java
mkdir -p src/test/javascript/unit
mkdir -p src/test/javascript/e2e
mkdir -p src/test/resources
rm -f ./src/main/webapp/WEB-INF/web.xml
rm -f ./src/main/webapp/index.jsp
mkdir -p ./src/main/webapp/css
touch ./src/main/webapp/css/specific.css
mkdir -p ./src/main/webapp/js
touch ./src/main/webapp/js/app.js
touch ./src/main/webapp/js/controllers.js
touch ./src/main/webapp/js/routes.js
touch ./src/main/webapp/js/services.js
touch ./src/main/webapp/js/filters.js
touch ./src/main/webapp/js/services.js
mkdir -p ./src/main/webapp/vendor
mkdir -p ./src/main/webapp/partials
mkdir -p ./src/main/webapp/img
touch README.md
touch .bowerrc

echo "Downloading web libraries ###"
bower install angular#1.2.27
bower install angular-route#1.2.27
bower install angular-animate#1.2.27
bower install angular-mocks#1.2.27
bower install angular-loader#1.2.27
bower install bootstrap

echo "setting up libraries #####"
rm -rf src/main/webapp/vendor/
mkdir src/main/webapp/lib
cp -R bower_components/* src/main/webapp/lib/
