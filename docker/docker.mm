<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1506021564220" ID="ID_1406597644" MODIFIED="1506022320828" TEXT="Docker">
<node CREATED="1506165081806" ID="ID_1218100919" MODIFIED="1506166135703" POSITION="right" TEXT="Core components">
<node CREATED="1506165720012" ID="ID_1009912858" MODIFIED="1506165728243" TEXT="Docker client and server">
<node CREATED="1506165803672" ID="ID_1634370321" MODIFIED="1506165805559" TEXT="The Docker client talks to the Docker server or daemon, which, in turn, does all the work."/>
<node CREATED="1506165828252" ID="ID_1734114868" MODIFIED="1506165831131" TEXT="Docker ships with a command line client binary, docker, as well as a full RESTful API to interact with the daemon."/>
<node CREATED="1506165859391" ID="ID_830988250" MODIFIED="1506165861159" TEXT="It has a single binary, docker, that can act as both client and server. As a client, the docker binary passes requests to the Docker daemon (e.g., asking it to return information about itself), and then processes those requests when they are returned."/>
</node>
<node CREATED="1506166029021" ID="ID_921370121" MODIFIED="1506166033055" TEXT="Images">
<node CREATED="1506166033580" ID="ID_1392365292" MODIFIED="1506166052414" TEXT="Images are the &#x201d;build&#x201d; part of Docker&#x2019;s life cycle. They are a layered format, using Union file systems, that are built step-by-step using a series of instructions.">
<node CREATED="1506171163583" ID="ID_1445592779" MODIFIED="1506171169881" TEXT="TODO: What is a docker image"/>
<node CREATED="1506171940850" ID="ID_900748745" MODIFIED="1506172104329" TEXT="Location: local images live on our local Docker host in the /var/lib/docker directory, each image will be inside a dir named for a storage driver; i.e. aufs or devicemapper.">
<node CREATED="1506172049403" ID="ID_1364579418" MODIFIED="1506172055113" TEXT="on Mac: $HOME/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/Docker.qcow2"/>
</node>
<node CREATED="1506172188289" ID="ID_1038825083" MODIFIED="1506172339943" TEXT="OS in images: We call it the Ubuntu operating system, but really it is not the full operating system. It&#x2019;s a cut-down version with the bare runtime required to run the distribution."/>
<node CREATED="1506172344375" ID="ID_594140192" MODIFIED="1506172358767" TEXT="Tags: We identify each image inside that repository by what Docker calls tags. Each image is being listed by the tags applied to it, so, for example, 12.04, 12.10, quantal, or precise and so on. Each tag marks together a series of image layers that represent a specific image (e.g., the 12.04 tag collects together all the layers of the Ubuntu 12.04 image). This allows us to store more than one image inside a repository."/>
</node>
</node>
<node CREATED="1506166064453" ID="ID_1954323449" MODIFIED="1506166068151" TEXT="Registries">
<node CREATED="1506166115632" ID="ID_1966461950" MODIFIED="1506166117134" TEXT="Docker stores the images you build in registries. There are two types of registries: public and private. dockerhub">
<node CREATED="1506172152088" ID="ID_1169098892" MODIFIED="1506172154069" TEXT="Images live inside repositories, and repositories live on registries. The default registry is the public registry managed by Docker, Inc., Docker Hub. You can think of an image repository as being much like a Git repository. It contains images, layers, and metadata about those images."/>
<node CREATED="1506172468475" ID="ID_980442994" MODIFIED="1506172470420" TEXT="The top-level repositories are managed by Docker Inc and by selected vendors who provide curated base images that you can build upon (e.g., the Fedora team provides a fedora image). The top-level repositories also represent a commitment from vendors and Docker Inc that the images contained in them are well constructed, secure, and up to date."/>
</node>
</node>
<node CREATED="1506166144441" ID="ID_1917072843" MODIFIED="1506166148824" TEXT="Containers">
<node CREATED="1506166148825" ID="ID_738492142" MODIFIED="1506166283459" TEXT="Launched from images and can contain one or more running processes.">
<node CREATED="1506172081172" ID="ID_1096636613" MODIFIED="1506172085693" TEXT="Location: containers in the /var/lib/docker/containers directory"/>
</node>
</node>
</node>
<node CREATED="1506021807576" ID="ID_1542729372" MODIFIED="1506021814038" POSITION="right" TEXT="How it works - analogy">
<node CREATED="1506021816496" ID="ID_853574006" MODIFIED="1506021876859" TEXT="Dockerfile - is the source code"/>
<node CREATED="1506021832282" ID="ID_1430992218" MODIFIED="1506021881170" TEXT="Image - is the binary resulting from compiling and building your Dockerfile">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1506021902363" ID="ID_1466416592" MODIFIED="1506021925198" TEXT="Container - is the running instance of an image, a process"/>
<node CREATED="1506021983382" ID="ID_1636089430" MODIFIED="1506022034256" TEXT="Docker host - is caching images and running containers (a machine running the Docker engine)"/>
<node CREATED="1506022046491" ID="ID_961642189" MODIFIED="1506022209282" TEXT="Registry - is storing images in the cloud - like a repository for package managers like apt, npm"/>
</node>
<node CREATED="1506022326343" ID="ID_1926325017" MODIFIED="1506159459072" POSITION="left" TEXT="Flow">
<node CREATED="1506022334087" ID="ID_1845372393" MODIFIED="1506022348887" TEXT="Creating a Dockerfile">
<node CREATED="1506022519474" ID="ID_1483810659" MODIFIED="1506022846130" TEXT="DSL syntax">
<node CREATED="1506022848693" ID="ID_181921789" MODIFIED="1506022868632" TEXT="FROM">
<node CREATED="1506022870941" ID="ID_1961005933" MODIFIED="1506022941241" TEXT="Use the latest ubuntu image as a base, it will be retrieved from the public registry"/>
<node CREATED="1506022986497" ID="ID_1292631261" MODIFIED="1506174890916" TEXT="FROM ubuntu:14.04">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1506174791217" ID="ID_1952574161" MODIFIED="1506174797778" TEXT="MAINTAINER">
<node CREATED="1506174810605" ID="ID_1375377354" MODIFIED="1506174821454" TEXT="Who the author of the image is and what their email address is. This is useful for specifying an owner and contact for an image."/>
<node CREATED="1506174822624" ID="ID_356053833" MODIFIED="1506174890058" TEXT="MAINTAINER James Turnbull &quot;james@example.com&quot;">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1506022957864" ID="ID_109542568" MODIFIED="1506022977421" TEXT="RUN">
<node CREATED="1506022980009" ID="ID_1418814829" MODIFIED="1506174866429" TEXT="The RUN instruction executes commands on the current image.">
<node CREATED="1506174926128" ID="ID_531678317" MODIFIED="1506174936847" TEXT="Each of these instructions will create a new layer and, if successful, will commit that layer and then execute the next instruction."/>
</node>
<node CREATED="1506023116857" ID="ID_1500661938" MODIFIED="1506174889146" TEXT="RUN echo &quot;My first Docker image&quot;">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506174875794" ID="ID_486323650" MODIFIED="1506174885221" TEXT="We will actually not see this - use CMD instead"/>
</node>
<node CREATED="1506174872553" ID="ID_1670749251" MODIFIED="1506174887729" TEXT="RUN apt-get update &amp;&amp; apt-get install -y nginx">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1506174976197" ID="ID_1549245587" MODIFIED="1506175066049" TEXT="RUN [ &quot;apt-get&quot;, &quot; install&quot;, &quot;-y&quot;, &quot;nginx&quot; ]">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506174995052" ID="ID_418506075" MODIFIED="1506175021604" TEXT="By default, the RUN instruction executes inside a shell using the command wrapper /bin/sh -c. If you are running the instruction on a platform without a shell or you wish to execute without a shell (for example, to avoid shell string munging), you can specify the instruction in exec format."/>
<node CREATED="1506175052616" ID="ID_644931147" MODIFIED="1506175054910" TEXT="We use this format to specify an array containing the command to be executed and then each parameter to pass to the command."/>
</node>
</node>
<node CREATED="1506175076928" ID="ID_1998624849" MODIFIED="1506175080432" TEXT="EXPOSE">
<node CREATED="1506175096793" ID="ID_1798942461" MODIFIED="1506175100020" TEXT="Tells Docker that the application in this container will use this specific port on the container. That doesn&#x2019;t mean you can automatically access whatever service is running on that port (here, port 80) on the container. For security reasons, Docker doesn&#x2019;t open the port automatically, but waits for you to do it when you run the container using the docker run command."/>
<node CREATED="1506175100897" ID="ID_138794388" MODIFIED="1506175106057" TEXT="EXPOSE 80">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1506173817098" ID="ID_165682169" MODIFIED="1506173842163" TEXT="Dockerfile is created usually in the directory alongside an application code">
<node CREATED="1506173866785" ID="ID_628330544" MODIFIED="1506173868870" TEXT="This directory is our build environment, which is what Docker calls a context or build context. Docker will upload the build context, as well as any files and directories contained in it, to our Docker daemon when the build is run. This provides the Docker daemon with direct access to any code, files or other data you might want to include in the image."/>
</node>
<node CREATED="1506173997748" ID="ID_196967163" MODIFIED="1506174005087" TEXT="The Dockerfile contains a series of instructions paired with arguments. Each instruction, for example FROM, should be in upper-case and be followed by an argument: FROM ubuntu:14.04. Instructions in the Dockerfile are processed from the top down, so you should order them accordingly."/>
<node CREATED="1506173903609" ID="ID_1407003480" MODIFIED="1506173912227" TEXT="--&gt; example &lt;--">
<node CREATED="1506173913442" ID="ID_199912959" MODIFIED="1506173949922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <font color="#fc001b" size="2"># Version: 0.0.1</font>
    </div>
    <div>
      <font color="#fc001b" size="2">FROM ubuntu:14.04</font>
    </div>
    <div>
      <font color="#fc001b" size="2">MAINTAINER James Turnbull &quot;james@example.com&quot;</font>
    </div>
    <div>
      <font color="#fc001b" size="2">RUN apt-get update &amp;&amp; apt-get install -y nginx</font>
    </div>
    <div>
      <font color="#fc001b" size="2">RUN echo 'Hi, I am in your container'&gt;/usr/share/nginx/html/index.html</font>
    </div>
    <div>
      <font color="#fc001b" size="2">EXPOSE 80</font>
    </div>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1506022351902" ID="ID_1383589610" MODIFIED="1506022356987" TEXT="Building an image">
<node CREATED="1506023223725" ID="ID_1002364931" MODIFIED="1506027706364" TEXT="docker build .">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506172795349" ID="ID_1582473482" MODIFIED="1506172873064" TEXT="We don&#x2019;t generally actually &#x201d;create&#x201d; new images; rather, we build new images from existing base images, like the ubuntu or fedora images. Images can be created from the Dockerfile or from a container using docker commit."/>
<node CREATED="1506174035638" ID="ID_428650269" MODIFIED="1506175530667" TEXT="Docker executing instructions roughly follow a workflow:">
<node CREATED="1506174047821" ID="ID_208590893" MODIFIED="1506174050033" TEXT="1. Docker runs a container from the image."/>
<node CREATED="1506174056742" ID="ID_307499582" MODIFIED="1506174058243" TEXT="2. An instruction executes and makes a change to the container."/>
<node CREATED="1506174069998" ID="ID_1078890268" MODIFIED="1506174071621" TEXT="3. Docker runs the equivalent of docker commit to commit a new layer."/>
<node CREATED="1506174167729" ID="ID_1140722529" MODIFIED="1506174169740" TEXT="4. Docker then runs a new container from this new image."/>
<node CREATED="1506174176323" ID="ID_199998821" MODIFIED="1506174177652" TEXT="5. The next instruction in the file is executed, and the process repeats until all instructions have been executed."/>
<node CREATED="1506174213556" ID="ID_1224986369" MODIFIED="1506174272356" TEXT="This means that if the process stops because an instruction fails to complete, we will be left with an image that can be used.">
<node CREATED="1506174283935" ID="ID_840203053" MODIFIED="1506174285848" TEXT="This is highly useful for debugging: you can run a container from this image interactively and then debug why your instruction failed using the last image created.">
<node CREATED="1506175557508" ID="ID_1961922744" MODIFIED="1506175559936" TEXT="1. I can use the docker run command to create a container from the last step that succeeded in my Docker build, in this example using the image ID of 997485f46ec4."/>
<node CREATED="1506175569234" ID="ID_479935284" MODIFIED="1506175570749" TEXT="2. I can then try to run the apt-get install -y ngin step again with the right package name or conduct some other debugging to determine what went wrong. Once I&#x2019;ve identified the issue, I can exit the container, update my Dockerfile with the right package name, and retry my build."/>
</node>
</node>
</node>
<node CREATED="1506023351049" ID="ID_1977614921" MODIFIED="1506024159202" TEXT="&quot;.&quot; means look in the current directory for the Dockerfile and use it as a context to reference files and directories from here"/>
<node CREATED="1506023377043" ID="ID_146334872" MODIFIED="1506028224192" TEXT="parameters">
<node CREATED="1506028132018" ID="ID_10590492" MODIFIED="1506028222701" TEXT="-t name">
<node CREATED="1506028141618" ID="ID_1944858079" MODIFIED="1506028271378" TEXT="Tags our image with a name - so we don&apos;t need to use hash when running container"/>
</node>
<node CREATED="1506028224193" ID="ID_1766015088" MODIFIED="1506028289370" TEXT="-t name:version">
<node CREATED="1506028228188" ID="ID_1238311952" MODIFIED="1506028260915" TEXT="As above but also adds a tag, if tag is omitted as above, it will be tagged as :latest"/>
</node>
</node>
<node CREATED="1506175270927" ID="ID_1200177924" MODIFIED="1506175282537" TEXT="--&gt; example &lt;--">
<node CREATED="1506175286555" ID="ID_1614168257" MODIFIED="1506175299806" TEXT="docker build -t=&quot;jamtur01/static_web:v1&quot; ."/>
</node>
<node CREATED="1506023500756" ID="ID_1504114983" MODIFIED="1506023573572" TEXT="output">
<node CREATED="1506023576099" ID="ID_640646795" MODIFIED="1506024215187">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Sending build context to Docker daemon </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">2.048</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;kB </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">1</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;&#160;: FROM ubuntu </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">latest: Pulling from library/ubuntu </font>
    </p>
    <p>
      
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">b3e1c725a85f: Pull complete </font>
    </p>
    <p>
      <font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">4</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">daad8bdde31: Pull complete </font>
    </p>
    <p>
      <font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">63</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">fe8c0068a8: Pull complete </font>
    </p>
    <p>
      <font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">4</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">a70713c436f: Pull complete </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">bd842a2105a8: Pull complete </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Digest: sha256:</font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">7</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">a64bc9c8843b0a8c8b8a7e4715b7615e4e1b0d8ca3c7e7a76ec8250899c397a </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Status: Downloaded newer image <b>for</b>&#160;ubuntu:latest </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;---&gt; </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">104</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">bec311bcd </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">2</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;: RUN </font><font color="rgb(0, 134, 179)" face="Inconsolata, monospace, sans-serif" size="2">echo</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(221, 17, 68)" face="Inconsolata, monospace, sans-serif" size="2">&quot;My first Docker image&quot; </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;---&gt; Running <b>in</b>&#160;&#160;f85bd2e0f554 </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">My first Docker image </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;---&gt; </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">1</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">d4302baa251 </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Removing intermediate container f85bd2e0f554 </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Successfully built </font><font color="rgb(0, 128, 128)" face="Inconsolata, monospace, sans-serif" size="2">1</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">d4302baa251 </font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1506023749077" ID="ID_1135173671" MODIFIED="1506023899419">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Based on this Dockerfile:&#160;
    </p>
    <p>
      
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">FROM ubuntu RUN </font><font color="rgb(0, 134, 179)" face="Inconsolata, monospace, sans-serif" size="2">echo</font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(221, 17, 68)" face="Inconsolata, monospace, sans-serif" size="2">&quot;My first Docker image&quot;</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1506024126190" ID="ID_1581587987" MODIFIED="1506024151150" TEXT="Copy the directory&apos;s content into a temporary directory and use that as context"/>
<node CREATED="1506024215700" ID="ID_285359067" MODIFIED="1506024231212" TEXT="STEP 1 Docker retrieves the latest ubuntu image from the public registry and all of its intermediate images"/>
<node CREATED="1506024233469" ID="ID_1779457608" MODIFIED="1506024256188" TEXT="STEP 2 Docker runs the echo command inside the container and route standard output and standard error to our machine so that we can see the result on our terminal"/>
<node CREATED="1506024492836" ID="ID_992844882" MODIFIED="1506025383482" TEXT="---&gt; 1d4302baa251: &#xa;&#xa;Where every line starting with an arrow and ending with a hash represents an intermediate image.&#xa;&#xa;Every command, in the Dockerfile, that could potentially alter the state of the image (such as RUN, since Docker cannot know if our command has side effects) produces an &quot;intermediate image&quot;. That is, every time such a step is encountered an image will be created that holds the state produced by all the previous commands.">
<arrowlink DESTINATION="ID_992844882" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1670410221" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_992844882" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_1670410221" SOURCE="ID_992844882" STARTARROW="None" STARTINCLINATION="0;0;"/>
<node CREATED="1506024794544" ID="ID_1647660691" MODIFIED="1506026859877">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example will produce 4 intermediate images:
    </p>
    <p>
      
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2"><b>FROM</b>&#160;ubuntu </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">WORKDIR /tmp </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">COPY test.txt . </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">RUN cat test.txt </font>
    </p>
    <p>
      
    </p>
    <ul style="text-align: start; margin-right: 0px; background-color: rgb(255, 255, 255); margin-left: 0px; white-space: normal; text-transform: none; margin-top: 0px; font-weight: normal; font-style: normal; word-spacing: 0px; letter-spacing: 0.1px; font-size: 18px; text-indent: 0px; margin-bottom: 0; font-family: Merriweather, serif; color: rgb(58, 65, 69); padding-left: 0" charset="utf-8">
      <li style="margin-top: 0; margin-left: 0px; margin-right: 0px; margin-bottom: 0">
        <font face="Inconsolata, monospace, sans-serif" size="2"><code style="padding-right: 3px; padding-top: 1px; background-color: rgb(247,; white-space: pre-wrap; background-attachment: scroll; font-size: 0.85em; background-image: null; background-repeat: repeat; background-position: 250, 251); padding-bottom: 1px; font-family: Inconsolata, monospace, sans-serif; padding-left: 3px">FROM</code></font><font size="2">&#160;copies the existing&#160;</font><font face="Inconsolata, monospace, sans-serif" size="2"><code style="padding-right: 3px; padding-top: 1px; background-color: rgb(247,; white-space: pre-wrap; background-attachment: scroll; font-size: 0.85em; background-image: null; background-repeat: repeat; background-position: 250, 251); padding-bottom: 1px; font-family: Inconsolata, monospace, sans-serif; padding-left: 3px">ubuntu</code></font><font size="2">&#160;image into an intermediate image. </font>
      </li>
      <li style="margin-top: 0; margin-left: 0px; margin-right: 0px; margin-bottom: 0">
        <font face="Inconsolata, monospace, sans-serif" size="2"><code style="padding-right: 3px; padding-top: 1px; background-color: rgb(247,; white-space: pre-wrap; background-attachment: scroll; font-size: 0.85em; background-image: null; background-repeat: repeat; background-position: 250, 251); padding-bottom: 1px; font-family: Inconsolata, monospace, sans-serif; padding-left: 3px">WORKDIR</code></font><font size="2">&#160;changes the working directory to the given one. </font>
      </li>
      <li style="margin-top: 0; margin-left: 0px; margin-right: 0px; margin-bottom: 0">
        <font face="Inconsolata, monospace, sans-serif" size="2"><code style="padding-right: 3px; padding-top: 1px; background-color: rgb(247,; white-space: pre-wrap; background-attachment: scroll; font-size: 0.85em; background-image: null; background-repeat: repeat; background-position: 250, 251); padding-bottom: 1px; font-family: Inconsolata, monospace, sans-serif; padding-left: 3px">COPY</code></font><font size="2">&#160;copies the given file into the working directory. </font>
      </li>
      <li style="margin-top: 0; margin-left: 0px; margin-right: 0px; margin-bottom: 0">
        <font face="Inconsolata, monospace, sans-serif" size="2"><code style="padding-right: 3px; padding-top: 1px; background-color: rgb(247,; white-space: pre-wrap; background-attachment: scroll; font-size: 0.85em; background-image: null; background-repeat: repeat; background-position: 250, 251); padding-bottom: 1px; font-family: Inconsolata, monospace, sans-serif; padding-left: 3px">RUN</code></font><font size="2">&#160;runs an arbitrary command</font>
      </li>
    </ul>
  </body>
</html></richcontent>
<node CREATED="1506025110740" ID="ID_770370227" MODIFIED="1506026962552">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Sending build context to Docker daemon 3.072 kB </font><font size="2"><br size="2" /></font><font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step 1 : FROM ubuntu </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; 104bec311bcd </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step 2 : WORKDIR /tmp </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; Using cache </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160; </font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; 8b7569f87645 </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step 3 : COPY test.txt . </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; c515890976fb </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Removing intermediate container 7d07b7f6f0fb </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Step 4 : RUN cat test.txt </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; Running in 9ec4a66f5a05 </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">I'm the content of test.txt</font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">&#160;</font><font color="rgb(153, 153, 136)" face="Inconsolata, monospace, sans-serif" size="2"><i>---&gt; 27922b2708f1 </i></font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Removing intermediate container 9ec4a66f5a05 </font>
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Inconsolata, monospace, sans-serif" size="2">Successfully built 27922b2708f1 </font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1506028012236" ID="ID_1503886397" MODIFIED="1506028092131" TEXT="Notice the RUN is executed at build time so we won&apos;t see the output of the command when we run a container - notice that the content of the test.txt is printed when building that image."/>
</node>
</node>
</node>
<node CREATED="1506027362694" ID="ID_300023176" MODIFIED="1506027407313" TEXT="Removing intermediate container - to execute RUN commands Docker needs to actually instantiate a container with the intermediate image up to that line of the Dockerfile and run the actual command. It will then &quot;commit&quot; the state of the container as a new intermediate image and continue the building process."/>
</node>
</node>
<node CREATED="1506175336592" ID="ID_306301773" MODIFIED="1506175380919" TEXT=".dockerignore">
<node CREATED="1506175389170" ID="ID_1792464010" MODIFIED="1506175409557" TEXT="If a .dockerignore file exists in the root of the build context then it is interpreted as a newline-separated list of exclusion patterns. Much like a .gitignore file it excludes the listed files from being treated as part of the build context, and therefore prevents them from being uploaded to the Docker daemon."/>
</node>
</node>
</node>
<node CREATED="1506022373342" ID="ID_1656626881" MODIFIED="1506022379700" TEXT="Running a container">
<node CREATED="1506027677513" ID="ID_1744942666" MODIFIED="1506157008297" TEXT="docker run &lt;image&gt; &lt;command&gt;" VGAP="2">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506028593826" ID="ID_1957597278" MODIFIED="1506028780922" TEXT="&lt;image&gt; We can provide image hash or image name and tag">
<node CREATED="1506166754549" ID="ID_949710918" MODIFIED="1506166767034" TEXT="If not found locally, it will be pulled from remote registry"/>
<node CREATED="1506172393808" ID="ID_228619017" MODIFIED="1506172426027" TEXT="We can refer to a specific image inside a repository by suffixing the repository name with a colon and a tag name.&#x9;">
<node CREATED="1506172428008" ID="ID_1117804316" MODIFIED="1506172433113" TEXT="ubuntu:12.04"/>
<node CREATED="1506172433986" ID="ID_1529616600" MODIFIED="1506172447024" TEXT="ubuntu is equal to ubuntu:latest"/>
</node>
</node>
<node CREATED="1506028782170" ID="ID_879767294" MODIFIED="1506157156195" TEXT="&lt;command&gt; Command to run once the container starts">
<node CREATED="1506157157220" ID="ID_1170956243" MODIFIED="1506157741028" TEXT="The command is what keeps the container alive. Within the container it will be the process with PID 1 which will act as parent of all subsequent processes. This means that if such process is terminated the container will stop."/>
<node CREATED="1506158378302" ID="ID_334458778" MODIFIED="1506158594251" TEXT="If a command is passed while running container, the CMD from Dockerfile will be ignored (overridden)"/>
</node>
<node CREATED="1506028620771" ID="ID_492091882" MODIFIED="1506028630177" TEXT="parameters">
<node CREATED="1506028630178" ID="ID_250367527" MODIFIED="1506028640069" TEXT="-it">
<node CREATED="1506028660850" ID="ID_110105368" MODIFIED="1506166725788" TEXT="run the container in interactive mode - give us a virtual terminal to interact (t - pseudo-tty) and standard input (i - STDIN)"/>
</node>
<node CREATED="1506028718207" ID="ID_959831121" MODIFIED="1506028721038" TEXT="-d">
<node CREATED="1506028721724" ID="ID_864996594" MODIFIED="1506169030434" TEXT="Daemon / detached mode">
<node CREATED="1506169045298" ID="ID_1597569867" MODIFIED="1506169054082" TEXT="Can still connect with ssh for example"/>
<node CREATED="1506169100211" ID="ID_399257745" MODIFIED="1506169121108" TEXT="Detached containers don&apos;t have the interactive session and are ideal for running applications and services - most containers we are likely to run will probably be deamonized"/>
</node>
</node>
<node CREATED="1506168445955" ID="ID_462387711" MODIFIED="1506168454525" TEXT="--name &lt;name&gt;">
<node CREATED="1506168456670" ID="ID_1201013495" MODIFIED="1506168465778" TEXT="Custom name for the container"/>
</node>
<node CREATED="1506170407770" ID="ID_1651905751" MODIFIED="1506170418435" TEXT="--restart">
<node CREATED="1506170923617" ID="ID_1345553994" MODIFIED="1506170925591" TEXT="If your container has stopped because of a failure you can configure Docker to restart it using the --restart flag. The --restart flag checks for the container&#x2019;s exit code and makes a decision whether or not to restart it. The default behavior is to not restart containers at all."/>
<node CREATED="1506170934935" ID="ID_937538062" MODIFIED="1506170941378" TEXT="--restart=always"/>
<node CREATED="1506170943232" ID="ID_509100178" MODIFIED="1506170959602" TEXT="--restart=on-failure:5"/>
</node>
</node>
<node CREATED="1506157008766" ID="ID_1740458268" MODIFIED="1506160248003" TEXT="--&gt; Examples &lt;--">
<node CREATED="1506157072955" ID="ID_1061721106" MODIFIED="1506166853670" TEXT="docker run -it ubuntu /bin/bash">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506157085738" ID="ID_1230192270" MODIFIED="1506157109773" TEXT="Run image named test in an interactive mode and call bash"/>
<node CREATED="1506166854598" ID="ID_611287684" MODIFIED="1506166858713" TEXT="Example output">
<node CREATED="1506166859224" ID="ID_1167910181" MODIFIED="1506166985067">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <font size="2">Unable to find image 'ubuntu' locally </font>
    </div>
    <div>
      <font size="2">ubuntu:latest: The image you are pulling has been verified </font>
    </div>
    <div>
      <font size="2">511136ea3c5a: Pull complete </font>
    </div>
    <div>
      <font size="2">d497ad3926c8: Pull complete </font>
    </div>
    <div>
      <font size="2">ccb62158e970: Pull complete </font>
    </div>
    <div>
      <font size="2">e791be0477f2: Pull complete </font>
    </div>
    <div>
      <font size="2">3680052c0f5c: Pull complete </font>
    </div>
    <div>
      <font size="2">22093c35d77b: Pull complete </font>
    </div>
    <div>
      <font size="2">5506de2b643b: Pull complete </font>
    </div>
    <div>
      <font size="2">Status: Downloaded newer image for ubuntu:latest </font>
    </div>
    <div>
      <font size="2">root@fcd78e1a3569:/# </font>
    </div>
  </body>
</html>
</richcontent>
<node CREATED="1506166949828" ID="ID_487853348" MODIFIED="1506166957362" TEXT="1. Firstly, Docker checked locally for the ubuntu image. "/>
<node CREATED="1506166957869" ID="ID_475419512" MODIFIED="1506166964758" TEXT="2. If it can&#x2019;t find the image on our local Docker host, it will reach out to the Docker Hub registry run by Docker, Inc., and look for it there."/>
<node CREATED="1506166965804" ID="ID_49907111" MODIFIED="1506166972251" TEXT="3. Once Docker had found the image, it downloaded the image and stored it on the local host."/>
<node CREATED="1506166985068" ID="ID_1530046569" MODIFIED="1506166998326" TEXT="4. Docker then used this image to create a new container inside a filesystem. The container has a network, IP address, and a bridge interface to talk to the local host."/>
<node CREATED="1506167000711" ID="ID_1021046039" MODIFIED="1506167053972" TEXT="5. Finally, we told Docker which command to run in our new container, in this case launching a Bash shell with the /bin/bash command."/>
</node>
</node>
<node CREATED="1506167103505" ID="ID_160150750" MODIFIED="1506167138399" TEXT="What happens when we exit a container?">
<node CREATED="1506167116553" ID="ID_1412698615" MODIFIED="1506167141538" TEXT="What happens when we type exit in the intective shell? The container only runs for as long as the command we specified, /bin/bash, is running. Once we exited the container, that command ended, and the container was stopped."/>
<node CREATED="1506167149707" ID="ID_829737854" MODIFIED="1506167151734" TEXT="Container still exists, this can be checked with the docker ps -a command"/>
<node CREATED="1506168980294" ID="ID_96409687" MODIFIED="1506168982324" TEXT="When detaching with ctrl + c or typing &apos;exit&apos;, we are killing the container because our main process is a bash.   The &quot;container&quot; is just a set of restricted namespaces (a process namespace, a filesystem namespace, etc) that processes can run in. If you have no process inside of a namespace, does that namespace really exist? It&apos;s not like a virtual machine where there&apos;s a kernel answering clock interrupts &amp;c. regardless. "/>
</node>
<node CREATED="1506167256469" ID="ID_769146358" MODIFIED="1506167420452" TEXT="Basic Linux commands">
<node CREATED="1506167270791" ID="ID_1601854534" MODIFIED="1506167310200" TEXT="Check hostname">
<node CREATED="1506167312056" ID="ID_1168987954" MODIFIED="1506167314744" TEXT="hostname"/>
</node>
<node CREATED="1506167293439" ID="ID_251865285" MODIFIED="1506167305722" TEXT="Check host entries added by Docker">
<node CREATED="1506167315207" ID="ID_234345791" MODIFIED="1506167322308" TEXT="cat etc/hosts"/>
</node>
<node CREATED="1506167330694" ID="ID_5346928" MODIFIED="1506167355976" TEXT="Check network conf - loopback interface and eth0 are set">
<node CREATED="1506167356934" ID="ID_1670769257" MODIFIED="1506167361084" TEXT="ip a"/>
</node>
<node CREATED="1506167421664" ID="ID_329885171" MODIFIED="1506167436167" TEXT="Check running processes">
<node CREATED="1506167436168" ID="ID_521483341" MODIFIED="1506167444276" TEXT="ps -aux"/>
</node>
<node CREATED="1506167492685" ID="ID_550548839" MODIFIED="1506167497436" TEXT="Install new package">
<node CREATED="1506167497437" ID="ID_1546688831" MODIFIED="1506167510159" TEXT="apt update &amp;&amp; apt install vim"/>
</node>
<node CREATED="1506167510933" ID="ID_1781070194" MODIFIED="1506167512638" TEXT="exit">
<node CREATED="1506167512639" ID="ID_684689992" MODIFIED="1506167514908" TEXT="exit"/>
</node>
</node>
</node>
</node>
<node CREATED="1506168317447" ID="ID_1705317631" MODIFIED="1506168344842" TEXT="Container naming">
<node CREATED="1506168348059" ID="ID_696809397" MODIFIED="1506168386162" TEXT="3 ways: short UUID, long UUID, a name (created automatically at random)"/>
<node CREATED="1506168400363" ID="ID_208043615" MODIFIED="1506168428119" TEXT="If we want to specify our own name we add --name my_own_container"/>
</node>
</node>
</node>
<node CREATED="1506159459635" ID="ID_1977900292" MODIFIED="1506159477137" TEXT="Inside the container">
<node CREATED="1506159477787" ID="ID_1652505660" MODIFIED="1506159487217" TEXT="root@f1e1064e0958:/tmp#">
<node CREATED="1506159490876" ID="ID_1953974390" MODIFIED="1506159530818" TEXT="The working directory is /tmp as this set with WORKDIR in Dockerfile"/>
<node CREATED="1506159546206" ID="ID_684086147" MODIFIED="1506159911152" TEXT="The default and only user is root because containers are supposed to be treated as stateless processes, not fully-functional virtual machines, therefore there is no need to have users with different privileges."/>
<node CREATED="1506159941322" ID="ID_527100184" MODIFIED="1506159968329" TEXT="Ubuntu image is actually a stripped-down version of the Ubuntu server distribution, many binaries will be missing.">
<node CREATED="1506159979873" ID="ID_1212044946" MODIFIED="1506160023801">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Install ping:
    </p>
    <p>
      <font size="2">apt update&#160;&#160;&#160; </font>
    </p>
    <p>
      <font size="2">apt install iputils-ping</font>&#160;&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1506162903081" ID="ID_1718874665" MODIFIED="1506162913695" TEXT="Creating an image from a container">
<node CREATED="1506162915295" ID="ID_247249945" MODIFIED="1506173048352" TEXT="docker commit &lt;container name&gt; &lt;repo&gt;/&lt;image name&gt;:&lt;tag&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506162968308" ID="ID_1033372175" MODIFIED="1506163172366" TEXT="This command allows us to save all changes we have done in a container to a new image.">
<node CREATED="1506163269832" ID="ID_692217225" MODIFIED="1506163271759" TEXT="Docker can &quot;kind of&quot; simulate the experience you would have with a virtual machine as long as you remember to commit your changes to an image every time."/>
</node>
<node CREATED="1506163175283" ID="ID_1805496458" MODIFIED="1506163201777" TEXT="Container name could be read from docker ps -a (container_id or name)"/>
<node CREATED="1506172908298" ID="ID_916983874" MODIFIED="1506172929528" TEXT="parameters">
<node CREATED="1506172930874" ID="ID_1355224897" MODIFIED="1506172976984" TEXT="-m &quot;message&quot;">
<node CREATED="1506172938779" ID="ID_765337371" MODIFIED="1506172964570" TEXT="commit message explaining our new image"/>
</node>
<node CREATED="1506172985341" ID="ID_1004016199" MODIFIED="1506172994954" TEXT="-a &quot;author name&quot;"/>
</node>
<node CREATED="1506163304181" ID="ID_238950047" MODIFIED="1506163328858" TEXT="Disadvantages comparing to using Dockerfile">
<node CREATED="1506163311721" ID="ID_551094936" MODIFIED="1506163338845" TEXT="The image is multiple orders of magnitude bigger than a simple text file. Harder to share."/>
<node CREATED="1506163349270" ID="ID_970507030" MODIFIED="1506163351459" TEXT="There is no way to reliably document how you built your image. Equivalent to not sharing the source code."/>
</node>
<node CREATED="1506173048353" ID="ID_286090136" MODIFIED="1506173057446" TEXT="--&gt; Examples &lt;--">
<node CREATED="1506173058607" ID="ID_380115308" MODIFIED="1506173062421" TEXT="docker commit 4aab3ce3cb76 jamtur01/apache2"/>
<node CREATED="1506173067264" ID="ID_1855242493" MODIFIED="1506173068978" TEXT="docker commit -m &quot;A new custom image&quot; -a &quot;James Turnbull&quot; 4aab3ce3cb76 jamtur01/apache2:webserver"/>
</node>
</node>
</node>
<node CREATED="1506163866899" ID="ID_757494281" MODIFIED="1506168526187" TEXT="Stop / start / attach-to a container">
<node CREATED="1506163878247" ID="ID_1270795068" MODIFIED="1506168652820" TEXT="docker start &lt;container id or name&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1506168615292" ID="ID_10890372" MODIFIED="1506168656550" TEXT="docker stop &lt;container id or name&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1506168745864" ID="ID_563115791" MODIFIED="1506168761896" TEXT="docker attach &lt;container id or name&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506168763709" ID="ID_599113973" MODIFIED="1506168779190" TEXT="Reattaches to interactive session on the container (if there is)"/>
</node>
<node CREATED="1506163905428" ID="ID_237992657" MODIFIED="1506170108363" TEXT="docker exec &lt;container id or name&gt; command">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506169740711" ID="ID_1481147650" MODIFIED="1506169751984" TEXT="Runs a process inside a running container"/>
<node CREATED="1506170132621" ID="ID_357397314" MODIFIED="1506170137048" TEXT="There are two types of commands we can run inside a container: background and interactive. Background tasks run inside the container without interaction and interactive tasks remain in the foreground. Interactive tasks are useful for tasks like opening a shell inside a container."/>
<node CREATED="1506170109195" ID="ID_572493888" MODIFIED="1506170114807" TEXT="Parameters">
<node CREATED="1506170116276" ID="ID_754145669" MODIFIED="1506170145729" TEXT="-d">
<node CREATED="1506170146350" ID="ID_1268458789" MODIFIED="1506170188014" TEXT="Runs background tasks"/>
<node CREATED="1506170204735" ID="ID_188311948" MODIFIED="1506170212112" TEXT="--&gt; Example &lt;--">
<node CREATED="1506170212113" ID="ID_1709769111" MODIFIED="1506170214430" TEXT="docker exec -d kontener_serwis touch /etc/new_config_file"/>
<node CREATED="1506170217292" ID="ID_1298768701" MODIFIED="1506170225056" TEXT="In this case our command will create a new empty file called /etc/ new_config_file inside our daemon_dave container. We can use a docker exec background command to run maintenance, monitoring or management tasks inside a running container."/>
</node>
</node>
<node CREATED="1506170232151" ID="ID_1728183341" MODIFIED="1506170235028" TEXT="-it">
<node CREATED="1506170270031" ID="ID_727387083" MODIFIED="1506170291666" TEXT="Runs interactive tasks"/>
<node CREATED="1506163923638" ID="ID_1130327588" MODIFIED="1506170265933" TEXT="--&gt; Example &lt;-- ">
<node CREATED="1506163936725" ID="ID_755962711" MODIFIED="1506163956056" TEXT="docker exec -it 25d285662a5a bash"/>
<node CREATED="1506170315892" ID="ID_1477171803" MODIFIED="1506170317356" TEXT="In this case our command will create a new bash session inside the container. We could then use this session to issue other commands inside our container."/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1506028303233" ID="ID_1957574821" MODIFIED="1506166651584" POSITION="right" TEXT="Other Docker client commands">
<node CREATED="1506166527909" ID="ID_457333997" MODIFIED="1506166538750" TEXT="docker help">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506166554190" ID="ID_1117921177" MODIFIED="1506166565082" TEXT="Purpose">
<node CREATED="1506166565549" ID="ID_78419150" MODIFIED="1506166571032" TEXT="Get general help"/>
</node>
<node CREATED="1506166588015" ID="ID_96804939" MODIFIED="1506166613296" TEXT="docker help run">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506166596880" ID="ID_1486340763" MODIFIED="1506166610733" TEXT="Getting help only for run command"/>
</node>
</node>
<node CREATED="1506028313957" ID="ID_392449455" MODIFIED="1506165019300" TEXT="docker images">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506028323818" ID="ID_1011337205" MODIFIED="1506166445281" TEXT="Purpose">
<node CREATED="1506166445826" ID="ID_1736342683" MODIFIED="1506166462094" TEXT="Get list of images and their details"/>
</node>
<node CREATED="1506028342345" ID="ID_1550438962" MODIFIED="1506028354237" TEXT="Example output">
<node CREATED="1506028376311" ID="ID_1291990827" MODIFIED="1506028550882">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <table>
      <tr>
        <td>
          <font size="2">REPOSITORY </font>
        </td>
        <td>
          <font size="2">TAG </font>
        </td>
        <td>
          <font size="2">IMAGE ID </font>
        </td>
        <td>
          <font size="2">CREATED </font>
        </td>
        <td>
          <font size="2">SIZE </font>
        </td>
      </tr>
      <tr>
        <td>
          <font size="2">test </font>
        </td>
        <td>
          <font size="2">latest </font>
        </td>
        <td>
          <font size="2">f2aba921b459 </font>
        </td>
        <td>
          <font size="2">2 minutes ago </font>
        </td>
        <td>
          <font size="2">129 MB</font>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1506028357280" ID="ID_709238347" MODIFIED="1506171919247" TEXT="docker images fedora">
<node CREATED="1506171919248" ID="ID_280423508" MODIFIED="1506171932017" TEXT="lists only fedora based images"/>
</node>
</node>
<node CREATED="1506166307327" ID="ID_48899071" MODIFIED="1506166315905" TEXT="docker info">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506166398753" ID="ID_1948570265" MODIFIED="1506166431383" TEXT="Purpose">
<node CREATED="1506166431818" ID="ID_1462344115" MODIFIED="1506166433216" TEXT="Checking if docker is running and its status"/>
</node>
<node CREATED="1506166410258" ID="ID_80914223" MODIFIED="1506166417118" TEXT="Example output">
<node CREATED="1506166475597" ID="ID_524734720" MODIFIED="1506166512884">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      Containers: 8
    </div>
    <div>
      <font size="2">&#160;Running: 0 </font>
    </div>
    <div>
      <font size="2">&#160;Paused: 0 </font>
    </div>
    <div>
      <font size="2">&#160;Stopped: 8 </font>
    </div>
    <div>
      <font size="2">Images: 22 </font>
    </div>
    <div>
      <font size="2">Server Version: 17.06.1-ce </font>
    </div>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1506167158259" ID="ID_191718683" MODIFIED="1506167164811" TEXT="docker ps">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506167524164" ID="ID_715933253" MODIFIED="1506167527559" TEXT="Purpose">
<node CREATED="1506167527560" ID="ID_575601247" MODIFIED="1506167533184" TEXT="Show running containers">
<node CREATED="1506167533185" ID="ID_930282980" MODIFIED="1506167556960" TEXT="Shows only running"/>
</node>
</node>
<node CREATED="1506167557568" ID="ID_602757104" MODIFIED="1506167593146" TEXT="docker ps -a">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506167564552" ID="ID_561558466" MODIFIED="1506167630818" TEXT="Shows containers that are stopped as well"/>
</node>
<node CREATED="1506167693460" ID="ID_1758908722" MODIFIED="1506167718397" TEXT="docker ps -n x">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506167714963" ID="ID_1718497471" MODIFIED="1506167716884" TEXT="shows the last x containers, running or stopped"/>
</node>
<node CREATED="1506167670827" ID="ID_1972964523" MODIFIED="1506167675256" TEXT="Example output">
<node CREATED="1506167675257" ID="ID_1911903070" MODIFIED="1506167679183" TEXT="We see quite a bit of information about our container: its ID, the image used to create it, the command it last ran, when it was created, and its exit status (in our case, 0, because it was exited normally using the exit command). We can also see that each container has a name."/>
</node>
</node>
<node CREATED="1506169591273" ID="ID_223720540" MODIFIED="1506169646013" TEXT="docker top &lt;container name or id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506169604390" ID="ID_729719618" MODIFIED="1506169623376" TEXT="Checking processes running in a container"/>
</node>
<node CREATED="1506169373835" ID="ID_160903607" MODIFIED="1506169567568" TEXT="docker logs &lt;container name or id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506169399893" ID="ID_819617051" MODIFIED="1506169431474" TEXT="Purpose">
<node CREATED="1506169410229" ID="ID_1480890804" MODIFIED="1506169425241" TEXT="Fetch the logs of a container"/>
</node>
<node CREATED="1506169473224" ID="ID_1991408141" MODIFIED="1506169479046" TEXT="-f">
<node CREATED="1506169479047" ID="ID_1182967314" MODIFIED="1506169512096" TEXT="getting continuos stream of logs (ctr+c to exit)"/>
</node>
<node CREATED="1506169540552" ID="ID_1903036956" MODIFIED="1506169550872" TEXT="-f --tail 0">
<node CREATED="1506169551290" ID="ID_1352732658" MODIFIED="1506169563439" TEXT="only first lines...?"/>
</node>
<node CREATED="1506169567568" ID="ID_1585504313" MODIFIED="1506169571529" TEXT="-ft">
<node CREATED="1506169571530" ID="ID_1096955832" MODIFIED="1506169575599" TEXT="add timestamps"/>
</node>
</node>
<node CREATED="1506169648638" ID="ID_1825395380" MODIFIED="1506169669968" TEXT="docker stats &lt;list of container names or ids&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506169666573" ID="ID_280986517" MODIFIED="1506169687323" TEXT="Statistics for one or more containers"/>
<node CREATED="1506169697127" ID="ID_1871095443" MODIFIED="1506169722764" TEXT="CPU %, MEM Usage, NET I/O, PIDS"/>
</node>
<node CREATED="1506170982898" ID="ID_1739651573" MODIFIED="1506170998106" TEXT="docker inspect &lt;container name or id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506171027468" ID="ID_546342197" MODIFIED="1506171029337" TEXT="The docker inspect command will interrogate our container and return its configuration information, including names, commands, networking configuration, and a wide variety of other useful data."/>
</node>
<node CREATED="1506171039340" ID="ID_969089387" MODIFIED="1506171052941" TEXT="docker rm &lt;container name or id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506171067598" ID="ID_230544869" MODIFIED="1506171076692" TEXT="Removes container"/>
</node>
<node CREATED="1506171077229" ID="ID_1581614927" MODIFIED="1506171088837" TEXT="docker rmi &lt;image id&gt;"/>
<node CREATED="1506172487338" ID="ID_1547525393" MODIFIED="1506172561908" TEXT="docker pull &lt;image name&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506172489906" ID="ID_452062239" MODIFIED="1506172526497" TEXT="Pull images down ourselves preemptively - docker run does that as well automatically"/>
<node CREATED="1506172565933" ID="ID_1571431289" MODIFIED="1506172619185" TEXT="docker pull fedora:20">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1506172582559" ID="ID_1545817689" MODIFIED="1506172658801" TEXT="docker search &lt;name&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506172598313" ID="ID_563990830" MODIFIED="1506172612773" TEXT="Search all of the publicly available images on Docker Hub"/>
<node CREATED="1506172658802" ID="ID_225145676" MODIFIED="1506172661465" TEXT="Results">
<node CREATED="1506172661465" ID="ID_1917224867" MODIFIED="1506172737110">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <div>
        <font size="3">It&#8217;ll search images and&#160;return: </font>
      </div>
      <div>
        <font size="3">&#8226; Repository names </font>
      </div>
      <div>
        <font size="3">&#8226; Image descriptions </font>
      </div>
      <div>
        <font size="3">&#8226; Stars - these measure the popularity of an image </font>
      </div>
    </div>
    <div>
      <div>
        <font size="3">&#8226; Official - an image managed by the upstream developer (e.g., the fedora&#160;image managed by the Fedora team) </font>
      </div>
      <div>
        <font size="3">&#8226; Automated - an image built by the Docker Hub&#8217;s Automated Build process </font>
      </div>
    </div>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1506175593707" ID="ID_1433471355" MODIFIED="1506175615468" TEXT="docker history &lt;image id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</map>
