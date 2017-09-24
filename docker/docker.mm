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
<node CREATED="1506250913897" ID="ID_847885419" MODIFIED="1506250930589" TEXT="RUN/CMD/ENTRYPOINT">
<node CREATED="1506022957864" ID="ID_109542568" MODIFIED="1506022977421" TEXT="RUN">
<node CREATED="1506022980009" ID="ID_1418814829" MODIFIED="1506174866429" TEXT="The RUN instruction executes commands on the current image.">
<node CREATED="1506174926128" ID="ID_531678317" MODIFIED="1506174936847" TEXT="Each of these instructions will create a new layer and, if successful, will commit that layer and then execute the next instruction."/>
<node CREATED="1506251336713" ID="ID_1573742033" MODIFIED="1506251360587" TEXT="A good illustration of RUN instruction would be to install multiple version control systems packages:&#xa;&#xa;RUN apt-get update &amp;&amp; apt-get install -y bzr cvs git mercurial subversion">
<node CREATED="1506251363296" ID="ID_512195354" MODIFIED="1506251379127" TEXT="Note that apt-get update and apt-get install are executed in a single RUN instruction. This is done to make sure that the latest packages will be installed. If apt-get install were in a separate RUN instruction, then it would reuse a layer added by apt-get update, which could had been created a long time ago.">
<node CREATED="1506251384385" ID="ID_89543923" MODIFIED="1506251389637" TEXT="?? validate that"/>
</node>
</node>
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
<node CREATED="1506248597121" ID="ID_95817815" MODIFIED="1506250942498" TEXT="CMD">
<node CREATED="1506248872998" ID="ID_256793556" MODIFIED="1506248945940" TEXT="The CMD instruction specifies the command to run when a container is launched. It is similar to the RUN instruction, but rather than running the command when the container is being built, it will specify the command to run when the container is launched.">
<node CREATED="1506249054684" ID="ID_1828371264" MODIFIED="1506249056203" TEXT="It&#x2019;s important to understand that we can override the CMD instruction using the docker run command. If we specify a CMD in our Dockerfile and one on the docker run command line, then the command line will override the Dockerfile&#x2019;s CMD instruction."/>
</node>
<node CREATED="1506248961536" ID="ID_815971274" MODIFIED="1506248979259" TEXT="CMD [&quot;bin/true&quot;]">
<node CREATED="1506248980234" ID="ID_854233702" MODIFIED="1506248988459" TEXT="is equivalent to">
<node CREATED="1506248989425" ID="ID_1657168500" MODIFIED="1506249009627" TEXT="docker run -it jamtur01/static_web /bin/true"/>
</node>
</node>
<node CREATED="1506249018539" ID="ID_38192418" MODIFIED="1506249033412" TEXT="CMD [&quot;bin/bach&quot;, &quot;-l&quot;]">
<node CREATED="1506249085348" ID="ID_413291358" MODIFIED="1506249104583" TEXT="Then if we build docker without passing the command at the end of the line, then we still will get the console.">
<node CREATED="1506249125757" ID="ID_1472245655" MODIFIED="1506249145998" TEXT="But if we passed docker run -i -t jamtur01/test /bin/ps then we would get ps executed instead of getting bash."/>
</node>
</node>
</node>
<node CREATED="1506248611443" ID="ID_967013289" MODIFIED="1506248617027" TEXT="ENTRYPOINT">
<node CREATED="1506249203193" ID="ID_1219758968" MODIFIED="1506249216782" TEXT="Similar to CMD except that it can&apos;t be overriden"/>
<node CREATED="1506249495799" ID="ID_807915045" MODIFIED="1506249499776" TEXT="ENTRYPOINT [&quot;/usr/sbin/nginx&quot;]">
<node CREATED="1506249516040" ID="ID_1714305542" MODIFIED="1506249518890" TEXT="Execution: $ docker run -t -i jamtur01/static_web -g &quot;daemon off;&quot;">
<node CREATED="1506249535694" ID="ID_697048727" MODIFIED="1506249561313" TEXT="will pass the params to the command in Dockerfile">
<node CREATED="1506249555534" ID="ID_1100015443" MODIFIED="1506249557167" TEXT="/usr/sbin/nginx -g &quot;daemon off;&quot;"/>
</node>
</node>
</node>
<node CREATED="1506249589031" ID="ID_1273627728" MODIFIED="1506249598205" TEXT="When we use ENTRYPOINT and CMD together, we can achieve the default arguments if no arguments is provided to the docker run:">
<node CREATED="1506249615182" ID="ID_1376955293" MODIFIED="1506249639434" TEXT="ENTRYPOINT [&quot;/usr/sbin/nginx&quot;] &#xa;CMD [&quot;-h&quot;]"/>
</node>
</node>
<node CREATED="1506250946237" ID="ID_1756095679" MODIFIED="1506250966939" TEXT="They can be specified in shell form or exec form">
<node CREATED="1506250975651" ID="ID_845577225" MODIFIED="1506251026912" TEXT="Shell form">
<node CREATED="1506250995975" ID="ID_1704576922" MODIFIED="1506250997938" TEXT="&lt;instruction&gt; &lt;command&gt;"/>
<node CREATED="1506251008047" ID="ID_1447235279" MODIFIED="1506251017232" TEXT="RUN apt-get install python3  &#xa;CMD echo &quot;Hello world&quot;  &#xa;ENTRYPOINT echo &quot;Hello world&quot; "/>
<node CREATED="1506251027408" ID="ID_420618538" MODIFIED="1506251029074" TEXT="When instruction is executed in shell form it calls /bin/sh -c &lt;command&gt; under the hood and normal shell processing happens. ">
<node CREATED="1506251044080" ID="ID_811179325" MODIFIED="1506251079614" TEXT="For example, the following snippet in Dockerfile:&#xa;&#xa;ENV name John Dow  &#xa;ENTRYPOINT echo &quot;Hello, $name&quot;  &#xa;&#xa;when container runs as docker run -it &lt;image&gt; will produce output&#xa;&#xa;Hello, John Dow  &#xa;&#xa;Note that variable name is replaced with its value."/>
</node>
</node>
<node CREATED="1506250979652" ID="ID_1594949464" MODIFIED="1506250984027" TEXT="Exec form">
<node CREATED="1506251100091" ID="ID_1551019767" MODIFIED="1506251101717" TEXT="&lt;instruction&gt; [&quot;executable&quot;, &quot;param1&quot;, &quot;param2&quot;, ...]"/>
<node CREATED="1506251107738" ID="ID_964022807" MODIFIED="1506251121600" TEXT="RUN [&quot;apt-get&quot;, &quot;install&quot;, &quot;python3&quot;]  &#xa;CMD [&quot;/bin/echo&quot;, &quot;Hello world&quot;]  &#xa;ENTRYPOINT [&quot;/bin/echo&quot;, &quot;Hello world&quot;]  "/>
<node CREATED="1506251129906" ID="ID_1668885420" MODIFIED="1506251133897" TEXT="Preferred form for CMD and ENTRYPOINT instructions."/>
<node CREATED="1506251145235" ID="ID_1009868889" MODIFIED="1506251147026" TEXT="When instruction is executed in exec form it calls executable directly, and shell processing does not happen. ">
<node CREATED="1506251167304" ID="ID_1772051379" MODIFIED="1506251176309" TEXT="For example, the following snippet in Dockerfile&#xa;&#xa;ENV name John Dow  &#xa;ENTRYPOINT [&quot;/bin/echo&quot;, &quot;Hello, $name&quot;]  &#xa;&#xa;when container runs as docker run -it &lt;image&gt; will produce output&#xa;&#xa;Hello, $name  &#xa;&#xa;Note that variable name is not substituted."/>
<node CREATED="1506251217427" ID="ID_1060342557" MODIFIED="1506251226440" TEXT="If you need to run bash (or any other interpreter but sh), use exec form with /bin/bash as executable. In this case, normal shell processing will take place. &#xa;&#xa;For example, the following snippet in Dockerfile&#xa;&#xa;ENV name John Dow  &#xa;ENTRYPOINT [&quot;/bin/bash&quot;, &quot;-c&quot;, &quot;echo Hello, $name&quot;]  &#xa;&#xa;when container runs as docker run -it &lt;image&gt; will produce output&#xa;&#xa;Hello, John Dow  "/>
</node>
</node>
</node>
<node CREATED="1506251271536" ID="ID_1480853688" MODIFIED="1506251281532" TEXT="- RUN is an image build step, the state of the container after a RUN command will be committed to the docker image. A Dockerfile can have many RUN steps that layer on top of one another to build the image.&#xa;&#xa;- CMD is the command the container executes by default when you launch the built image. A Dockerfile can only have one CMD. The CMD can be overridden when starting a container with docker run $image $other_command.&#xa;&#xa;- ENTRYPOINT is also closely related to CMD and can modify the way a container starts the image."/>
</node>
<node CREATED="1506175076928" ID="ID_1998624849" MODIFIED="1506250893649" TEXT="EXPOSE">
<node CREATED="1506175096793" ID="ID_1798942461" MODIFIED="1506175100020" TEXT="Tells Docker that the application in this container will use this specific port on the container. That doesn&#x2019;t mean you can automatically access whatever service is running on that port (here, port 80) on the container. For security reasons, Docker doesn&#x2019;t open the port automatically, but waits for you to do it when you run the container using the docker run command."/>
<node CREATED="1506175100897" ID="ID_138794388" MODIFIED="1506175106057" TEXT="EXPOSE 80">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1506248618269" ID="ID_1673489145" MODIFIED="1506248623771" TEXT="WORKDIR">
<node CREATED="1506249704682" ID="ID_1562502711" MODIFIED="1506249737356" TEXT="Provides a way to set the working directory for the container and the ENTRYPOINT and/or CMD to will be executed there when a container is launched from the image"/>
<node CREATED="1506249773891" ID="ID_661607444" MODIFIED="1506249792207">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <font size="2" color="#fc001b">WORKDIR /opt/webapp/db</font>
    </div>
    <div>
      <font size="2" color="#fc001b">RUN bundle install</font>
    </div>
    <div>
      <font size="2" color="#fc001b">WORKDIR /opt/webapp</font>
    </div>
    <div>
      <font size="2" color="#fc001b">ENTRYPOINT [ &quot;rackup&quot; ]</font>
    </div>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1506249831631" ID="ID_873502935" MODIFIED="1506249834133" TEXT="You can override the working directory at runtime with the -w flag, for example: $ docker run -ti -w /var/log ubuntu pwd /var/log"/>
</node>
<node CREATED="1506248624436" ID="ID_152986221" MODIFIED="1506248627101" TEXT="ENV">
<node CREATED="1506250223007" ID="ID_1858837130" MODIFIED="1506250232935" TEXT="Sets environment variables during the image build process"/>
<node CREATED="1506250251420" ID="ID_1110863750" MODIFIED="1506250253361" TEXT="ENV RVM_PATH /home/rvm/">
<node CREATED="1506250257860" ID="ID_68198542" MODIFIED="1506250277825" TEXT="If have this instruction in Dockerfile: RUN gem install unicorn">
<node CREATED="1506250277826" ID="ID_657647934" MODIFIED="1506250287914" TEXT="It will be executed as this">
<node CREATED="1506250292933" ID="ID_1265645092" MODIFIED="1506250294508" TEXT="RVM_PATH=/home/rvm/ gem install unicorn"/>
</node>
</node>
</node>
<node CREATED="1506250311999" ID="ID_577715773" MODIFIED="1506250313758" TEXT="ENV RVM_PATH=/home/rvm RVM_ARCHFLAGS=&quot;-arch i386&quot;">
<node CREATED="1506250313759" ID="ID_635682876" MODIFIED="1506250322297" TEXT="Multiple variables specified"/>
</node>
<node CREATED="1506250342799" ID="ID_1159328638" MODIFIED="1506250356452" TEXT="ENV TARGET_DIR /opt/app &#xa;WORKDIR $TARGET_DIR">
<node CREATED="1506250367513" ID="ID_305820425" MODIFIED="1506250388208" TEXT="Here we&#x2019;ve specified a new environment variable, TARGET_DIR, and then used its value in a WORKDIR instruction. Our WORKDIR instruction would now be set to /opt/app."/>
</node>
</node>
<node CREATED="1506248628925" ID="ID_1640913790" MODIFIED="1506248631439" TEXT="USER">
<node CREATED="1506250544368" ID="ID_768793145" MODIFIED="1506250560401" TEXT="Specifies a user that the image should be run as.">
<node CREATED="1506250574467" ID="ID_663678569" MODIFIED="1506250580074" TEXT="The default user if you don&#x2019;t specify the USER instruction is root.">
<node CREATED="1506250617738" ID="ID_519402290" MODIFIED="1506250635214" TEXT="Can be overridden by docker run -u USER"/>
</node>
<node CREATED="1506250741005" ID="ID_221833514" MODIFIED="1506250750889" TEXT="When ADD&#x2019;ing files Docker uses the ending character of the destination to determine what the source is. If the destination ends in a /, then it considers the source a directory. If it doesn&#x2019;t end in a /, it considers the source a file."/>
</node>
<node CREATED="1506250587431" ID="ID_1996055212" MODIFIED="1506250589258" TEXT="USER user"/>
<node CREATED="1506250592968" ID="ID_1137369724" MODIFIED="1506250595619" TEXT="USER user:group"/>
<node CREATED="1506250599016" ID="ID_1024485464" MODIFIED="1506250603750" TEXT="USER uid"/>
<node CREATED="1506250607561" ID="ID_1523534832" MODIFIED="1506250614469" TEXT="USER uid:gid"/>
</node>
<node CREATED="1506248631819" ID="ID_1100614807" MODIFIED="1506248636249" TEXT="ADD">
<node CREATED="1506250677834" ID="ID_1094666324" MODIFIED="1506250689185" TEXT="Adds files and directories from our build environment into our image">
<node CREATED="1506250723714" ID="ID_744713333" MODIFIED="1506250724980" TEXT="The source of the file can be a URL, filename, or directory as long as it is inside the build context or environment. You cannot ADD files from outside the build directory or context."/>
</node>
<node CREATED="1506250693841" ID="ID_780475267" MODIFIED="1506250695893" TEXT="ADD software.lic /opt/application/software.lic">
<node CREATED="1506250705812" ID="ID_1164450577" MODIFIED="1506250718794" TEXT="This will copy the file software.lic from the build directory to /opt/application/software.lic in the image."/>
</node>
</node>
<node CREATED="1506248637213" ID="ID_625217071" MODIFIED="1506250796353" TEXT="COPY">
<node CREATED="1506250780503" ID="ID_619320911" MODIFIED="1506250784800" TEXT="Closely related to the ADD instruction. The key difference is that the COPY instruction is purely focused on copying local files from the build context and does not have any extraction or decompression capabilities.">
<node CREATED="1506250822881" ID="ID_61335322" MODIFIED="1506250824699" TEXT="If the destination doesn&#x2019;t exist, it is created along with all missing directories in its path, much like how the mkdir -p command works."/>
</node>
<node CREATED="1506250796354" ID="ID_365563079" MODIFIED="1506250798506" TEXT="COPY conf.d/ /etc/apache2/">
<node CREATED="1506250805049" ID="ID_1521443923" MODIFIED="1506250814098" TEXT="This will copy files from the conf.d directory to the /etc/apache2/ directory."/>
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
</html></richcontent>
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
<node CREATED="1506244884510" ID="ID_552454623" MODIFIED="1506244893024" TEXT="--no-cache">
<node CREATED="1506244893025" ID="ID_397684570" MODIFIED="1506245173364" TEXT="As a result of each step being committed as an image, Docker treats previous layers as a cache. If we did not need to change anything in Steps 1 to 3, then Docker would use the previously built images as a cache and a starting point (from Step 4 where we did some change).&#xa;Sometimes, though, you want to make sure you don&#x2019;t use the cache. For example, if you&#x2019;d cached Step 3: apt-get update, then it wouldn&#x2019;t refresh the APT package cache, while we may want to do this to get a new version of a package.">
<node CREATED="1506245569642" ID="ID_1582159379" MODIFIED="1506245596472" TEXT="Trick to use build cache for templating:">
<node CREATED="1506245602420" ID="ID_1934693513" MODIFIED="1506245639424">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <font size="2" color="#fc001b">FROM ubuntu:14.04</font>
    </div>
    <div>
      <font size="2" color="#fc001b">MAINTAINER James Turnbull &quot;james@example.com&quot;</font>
    </div>
    <div>
      <font size="2" color="#fc001b">ENV REFRESHED_AT 2014-07-01</font>
    </div>
    <div>
      <font size="2" color="#fc001b">RUN apt-get -qq update</font>
    </div>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1506245644322" ID="ID_1425842300" MODIFIED="1506245690487" TEXT="With my template, when I want to refresh the build, I change the date in my ENV instruction. Docker then resets the cache when it hits that ENV instruction and runs every subsequent instruction anew without relying on the cache. This means my RUN apt-get update instruction is rerun and my package cache is refreshed with the latest content."/>
</node>
</node>
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
<node CREATED="1506246000183" ID="ID_1303826247" MODIFIED="1506246773103" TEXT="-p">
<node CREATED="1506246004152" ID="ID_492450660" MODIFIED="1506246183129" TEXT="Which network port to publish at runtime">
<node CREATED="1506247018654" ID="ID_1644310150" MODIFIED="1506247042204" TEXT="When we run a container, there are two methods of assigning ports on the Docker host">
<node CREATED="1506247044704" ID="ID_957001778" MODIFIED="1506247187655" TEXT="Docker can randomly assign a hight port from the range of 32768 to 61000 on the host that maps to port 80 on the container: -p 80"/>
<node CREATED="1506247191701" ID="ID_1055683591" MODIFIED="1506247222522" TEXT="We can specify a specific port on the Docker host that would map to port 80 on the container"/>
</node>
</node>
<node CREATED="1506246190285" ID="ID_1376879755" MODIFIED="1506246194242" TEXT="-p 80">
<node CREATED="1506247227063" ID="ID_437712395" MODIFIED="1506247254403" TEXT="Assign port from range 32768-61000 to port 80 on the container">
<node CREATED="1506248470053" ID="ID_1437116919" MODIFIED="1506248481064" TEXT="We can check which port has been assigned in three ways">
<node CREATED="1506248481693" ID="ID_420455361" MODIFIED="1506248491783" TEXT="docker ps -l"/>
<node CREATED="1506248517383" ID="ID_1318283958" MODIFIED="1506248532218" TEXT="docker port &lt;container name or id&gt;"/>
<node CREATED="1506248544563" ID="ID_814172579" MODIFIED="1506248563318" TEXT="docker inspect"/>
</node>
</node>
</node>
<node CREATED="1506246736689" ID="ID_3115499" MODIFIED="1506246745606" TEXT="-p 8080:80">
<node CREATED="1506247256406" ID="ID_425412381" MODIFIED="1506247270151" TEXT="Assign port 8080 on the host to port 80 on the container">
<node CREATED="1506248368728" ID="ID_1185640562" MODIFIED="1506248392686" TEXT="We need to remember that only one container on the same host can be assigned to the same port, 8080 in this case."/>
</node>
</node>
<node CREATED="1506246746239" ID="ID_926240124" MODIFIED="1506246770994" TEXT="-p 127.0.0.1:8080:80">
<node CREATED="1506248398853" ID="ID_132356794" MODIFIED="1506248419493" TEXT="Bind to a specific interface"/>
</node>
<node CREATED="1506246773625" ID="ID_159718243" MODIFIED="1506246785740" TEXT="-p 127.0.0.1::80">
<node CREATED="1506248420140" ID="ID_1793298195" MODIFIED="1506248434604" TEXT="Bind to a specific interface on a random port"/>
</node>
</node>
<node CREATED="1506250464121" ID="ID_1363991540" MODIFIED="1506250468556" TEXT="-e">
<node CREATED="1506250468557" ID="ID_928305754" MODIFIED="1506250498572" TEXT="Environment variable that will be applied at runtime (as opposed to ENV from Dockerfile applied and build time)"/>
<node CREATED="1506250525364" ID="ID_55130774" MODIFIED="1506250526713" TEXT="docker run -ti -e &quot;WEB_PORT=8080&quot; ubuntu"/>
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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1506175593707" ID="ID_1433471355" MODIFIED="1506175615468" TEXT="docker history &lt;image id&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1506176365627" ID="ID_306359777" MODIFIED="1506245762725" TEXT="Drill down into how the image was created. We can see each of the image layers inside an image and a Dockerfile instruction that created them."/>
<node CREATED="1506176373947" ID="ID_802528162" MODIFIED="1506176376285" TEXT="Results">
<node CREATED="1506176376286" ID="ID_1433563798" MODIFIED="1506176414968">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <div>
      <font size="2">IMAGE CREATED CREATED BY </font>
    </div>
    <div>
      <font size="2">SIZE </font>
    </div>
    <div>
      <font size="2">22d47c8cb6e5 6 minutes ago /bin/sh -c #(nop) EXPOSE map[80/tcp </font>
    </div>
    <div>
      <font size="2">:{}] 0 B </font>
    </div>
    <div>
      <font size="2">b584f4ac1def 6 minutes ago /bin/sh -c echo 'Hi, I am in your </font>
    </div>
    <div>
      <font size="2">container' 27 B </font>
    </div>
    <div>
      <font size="2">93fb180f3bc9 6 minutes ago /bin/sh -c apt-get install -y nginx </font>
    </div>
    <div>
      <font size="2">18.46 MB </font>
    </div>
    <div>
      <font size="2">9d938b9e0090 6 minutes ago /bin/sh -c apt-get update </font>
    </div>
    <div>
      <font size="2">20.02 MB </font>
    </div>
    <div>
      <font size="2">4c66c9dcee35 6 minutes ago /bin/sh -c #(nop) MAINTAINER James </font>
    </div>
    <div>
      <font size="2">Turnbull &quot; 0 B </font>
    </div>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
