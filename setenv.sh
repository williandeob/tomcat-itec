#
# Cutom Environment Variables for Tomcat
#
############################################

# -server
#  Select the java HotSpot Server JVM
# The 64-bit version of the JDK support only the Server VM,
# so in that case the option is implicit
# ... so it's redundant to today's world but it make me feel good.
export JAVA_OPTS="-server"

# -Xms/Xmx
#   Xms Sets the initial size of the Heap
#   Xmx sets the Maximum size of the Heap.
#  http://stackoverflow.com/questions/16087153/what-happens-when-we-set-xmx-and-xms-equal-size
#  http://crunchify.com/jvm-tuning-heapsize-stacksize-garbage-collection-fundamental/
export JAVA_OPTS="$JAVA_OPTS -Xms256M -Xmx512M"

# -NewSize/MaxNewSize
#  Set the size of the young generation
#  Most newly created objects are made here
#  Objects taht did not become unreachbale and survice the young
# Generation heap are copied to the Old Generation
# See http://www.cubrid.org/blog/dev-platform/understanding-java-garbage-collection
# https://redstack.wordpress.com/2011/01/06/visualising-garbage-collection-in-the-jvm/
export JAVA_OPTS="$JAVA_OPTS -XX:NewSize=64m -XX:MaxNewSize=128m"

# -PermSize/MaxPermSize
#  Store classes and interned character strings
# http://stackoverflow.com/questions/12114174/what-does-xxmaxpermsize-do
#   Warning!
#  Decprecated in Java 8!!  replace -XX:MetaspaceSize  !!!
export JAVA_OPTS="$JAVA_OPTS -XX:PermSize=64m -XX:MaxPermSize=128m"
