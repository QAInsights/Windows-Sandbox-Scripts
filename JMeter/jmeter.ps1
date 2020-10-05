# Make Directory
mkdir c:\java

# Download OpenJDK
Invoke-WebRequest -URI https://download.java.net/java/GA/jdk15/779bf45e88a44cbd9ea6621d33e33db1/36/GPL/openjdk-15_windows-x64_bin.zip -UseBasicParsing -Outfile C:\java\openjdk-15_windows-x64_bin.zip

# Extract zip file
Expand-Archive -Path C:\java\openjdk-15_windows-x64_bin.zip -DestinationPath C:\java

# Configure Environment variables

setx JAVA_HOME "C:\java\jdk-15"
setx PATH "%PATH%;%JAVA_HOME%\bin";

# Download JMeter
Invoke-WebRequest -URI https://downloads.apache.org//jmeter/binaries/apache-jmeter-5.3.zip -UseBasicParsing -Outfile C:\apache-jmeter-5.3.zip

#Extract JMeter
Expand-Archive -Path C:\apache-jmeter-5.3.zip -DestinationPath C:\

# Call JMeter
cmd.exe /c C:\apache-jmeter-5.3\bin\jmeter.bat