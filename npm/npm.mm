<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1510690687379" ID="ID_1650264925" MODIFIED="1510694244251" TEXT="npm">
<node CREATED="1509455572163" ID="ID_1539718382" MODIFIED="1509455603152" POSITION="right" TEXT="app configuration in package.json">
<node CREATED="1508445656055" ID="ID_1372719283" MODIFIED="1508445834618" TEXT="NPM allows library users to configure dependecies (that support that) to put their settings to the config property. This means that the settings shouldn&apos;t be in the root of the package.json. This way if NPM decides to put a property with the same name as the name of the library, there won&apos;t be any conflict.">
<node CREATED="1508445847471" ID="ID_996446834" MODIFIED="1508445896369" TEXT="&quot;config&quot;: {&#xa;   &quot;yourlib&quot;: {}&#xa;}"/>
</node>
</node>
<node CREATED="1508785140170" ID="ID_1276890567" MODIFIED="1508785662946" POSITION="right" TEXT="npm pack">
<node CREATED="1508785153616" ID="ID_360716989" MODIFIED="1508785493056" TEXT="This is what is called internally when we publish to repo."/>
<node CREATED="1508785493581" ID="ID_1444705467" MODIFIED="1508785514904" TEXT="We can use this to see what is sent to the repo to make sure it doesn&apos;t send something we don&apos;t want."/>
<node CREATED="1508785516854" ID="ID_796657069" MODIFIED="1508785632816" TEXT="It will create archive: name-of-project-1.0.0.tgz"/>
<node CREATED="1508785664008" ID="ID_1905628590" MODIFIED="1508785684555" TEXT="When we do that we will figure out that we don&apos;t need to include some directories like src or test."/>
</node>
<node CREATED="1509050799931" ID="ID_763292013" MODIFIED="1509051368237" POSITION="right" TEXT="publishing to">
<node CREATED="1509050804221" ID="ID_1704659769" MODIFIED="1509051367977" TEXT="Register to NPM"/>
<node CREATED="1509051368238" ID="ID_797223392" MODIFIED="1509051379102" TEXT="npm login">
<node CREATED="1509051379103" ID="ID_774990007" MODIFIED="1509051398077" TEXT="Could be prepopulated if details are in .npmrc"/>
</node>
<node CREATED="1509051501672" ID="ID_603632973" MODIFIED="1509051506223" TEXT="npm publish"/>
<node CREATED="1509053467034" ID="ID_1317240814" MODIFIED="1509053495698" TEXT="Why do I have to publish again with a higher version number even for a tiny change (a mistake for example)">
<node CREATED="1509053496663" ID="ID_882469185" MODIFIED="1509053546815" TEXT="For safety reasons - a person could update a package we are using without our knowledge"/>
<node CREATED="1509053547739" ID="ID_532230839" MODIFIED="1509053556799" TEXT="Hence version numbers are locked"/>
</node>
<node CREATED="1510694876193" ID="ID_446289382" MODIFIED="1510694877906" TEXT="tips">
<node CREATED="1510694877906" ID="ID_750035480" MODIFIED="1510694895028" TEXT=".npmignore">
<node CREATED="1510694895029" ID="ID_1863410381" MODIFIED="1510694915026" TEXT="By default npm respects the .gitignore file, and files matching those rules won&#x2019;t be published. However, if you add an .npmignore file, it will override the content of .gitignore - so they won&#x2019;t be merged."/>
</node>
</node>
</node>
<node CREATED="1509273148896" ID="ID_59361309" MODIFIED="1509274276491" POSITION="right" TEXT="npm deprecate">
<node CREATED="1509272798536" ID="ID_1336989052" MODIFIED="1509881918036" TEXT="Will display a warning message when installing a package">
<node CREATED="1509272823503" ID="ID_833923825" MODIFIED="1509272984235" TEXT="Reasons for deprecation">
<node CREATED="1509272973911" ID="ID_769876796" MODIFIED="1509273072608" TEXT="mistake when publishing a package with a particular version"/>
<node CREATED="1509273072760" ID="ID_1852056807" MODIFIED="1509273094377" TEXT="other package does the exactly same task or is more feature rich"/>
<node CREATED="1509273094584" ID="ID_1478377254" MODIFIED="1509273115778" TEXT="plain Node can now do the same task and we don&apos;t need unnecessary abstraction"/>
<node CREATED="1509273127964" ID="ID_185182526" MODIFIED="1509273141550" TEXT="security fix in the newer version"/>
</node>
</node>
<node CREATED="1509274276492" ID="ID_735464254" MODIFIED="1509274313430" TEXT="packagename&lt;@major.minor.path&gt; &lt;meassage&gt;">
<node CREATED="1509274278547" ID="ID_1565590572" MODIFIED="1509274307353" TEXT="npm deprecate github-names@2.0.0 mistakenly published"/>
</node>
</node>
<node CREATED="1509364467390" ID="ID_1849046675" MODIFIED="1510693006970" POSITION="right" TEXT="shrinkwap">
<node CREATED="1509364471550" ID="ID_210364550" MODIFIED="1509364477015" TEXT="lock version numbers">
<node CREATED="1509364477016" ID="ID_368148668" MODIFIED="1509364502631" TEXT="an author can release a patch release of his lib and infect all people that didn&apos;t lock their versions"/>
<node CREATED="1510692993089" ID="ID_1540018104" MODIFIED="1510692999211" TEXT="It&#x2019;s possible to have different versions locally then on production, if in the meantime someone just released a new version. The problem will arise, when this new version has some bug which will affect your production system."/>
</node>
<node CREATED="1510693012864" ID="ID_640218634" MODIFIED="1510693029600" TEXT="$ npm shrinkwrap">
<node CREATED="1510693031055" ID="ID_1134535378" MODIFIED="1510693077521" TEXT="Will generate npm-shrinkwrap.json that contains exact version of modules including version of deps of deps"/>
<node CREATED="1510693085689" ID="ID_1842484275" MODIFIED="1510693109307" TEXT="npm install will use it to reproduce the same dependency tree"/>
</node>
</node>
<node CREATED="1509881927511" ID="ID_1860805720" MODIFIED="1509881945191" POSITION="right" TEXT="managing packages">
<node CREATED="1509883438857" ID="ID_1686071788" MODIFIED="1509883445891" TEXT="semver">
<node CREATED="1509883448183" ID="ID_332275558" MODIFIED="1509883455491" TEXT="patch releases">
<node CREATED="1509883455492" ID="ID_859767746" MODIFIED="1509883462472" TEXT="1.0"/>
<node CREATED="1509883462643" ID="ID_1081386298" MODIFIED="1509883465645" TEXT="1.0.x"/>
<node CREATED="1509883467313" ID="ID_1001001398" MODIFIED="1509883478229" TEXT="~1.0.4"/>
</node>
<node CREATED="1509883483439" ID="ID_258382422" MODIFIED="1509883490286" TEXT="minor releases">
<node CREATED="1509883490287" ID="ID_615349816" MODIFIED="1509883505164" TEXT="1"/>
<node CREATED="1509883506635" ID="ID_1054912808" MODIFIED="1509883511825" TEXT="1.x"/>
<node CREATED="1509883512056" ID="ID_1998486351" MODIFIED="1509883526496" TEXT="^1.0.4"/>
</node>
<node CREATED="1509883548702" ID="ID_788138670" MODIFIED="1509883556758" TEXT="major releases">
<node CREATED="1509883538842" ID="ID_1523787573" MODIFIED="1509883543801" TEXT="*"/>
<node CREATED="1509883544236" ID="ID_1940704082" MODIFIED="1509883545384" TEXT="x"/>
</node>
</node>
<node CREATED="1509880618351" ID="ID_554493246" MODIFIED="1509880625322" TEXT="npm outdated">
<node CREATED="1509880853629" ID="ID_550275577" MODIFIED="1509880870620" TEXT="prints each package that requires update">
<node CREATED="1509881088083" ID="ID_254705774" MODIFIED="1509881120487" TEXT="Package                    Current  Wanted  Latest  Location&#xa;eslint                       3.2.2   3.2.2  4.10.0  stack-overflow-copy-paste"/>
</node>
<node CREATED="1509880871019" ID="ID_378929695" MODIFIED="1509881156735" TEXT="wanted - maximum version that satisfies the semver range"/>
<node CREATED="1509881399353" ID="ID_1099999837" MODIFIED="1509881423609" TEXT="latest - version tagged as latest in the registry"/>
<node CREATED="1509882453862" ID="ID_1598336712" MODIFIED="1509882463384" TEXT="-g --depth=0">
<node CREATED="1509882463384" ID="ID_617380496" MODIFIED="1509882489363" TEXT="to find out global packages"/>
</node>
</node>
<node CREATED="1509880640780" ID="ID_1883264251" MODIFIED="1509880646651" TEXT="npm update">
<node CREATED="1509881590725" ID="ID_981847937" MODIFIED="1509881612339" TEXT="will update all packages listed to the latest version respecting semver"/>
<node CREATED="1509882423575" ID="ID_713391395" MODIFIED="1509882433772" TEXT="-g to update global packages"/>
</node>
<node CREATED="1509881680005" ID="ID_1515929299" MODIFIED="1509881696762" TEXT="list installed packages">
<node CREATED="1509881683507" ID="ID_1175586096" MODIFIED="1509881687328" TEXT="npm ls"/>
</node>
<node CREATED="1509882076523" ID="ID_141236694" MODIFIED="1509882081912" TEXT="removing packages">
<node CREATED="1509882081913" ID="ID_1751810149" MODIFIED="1509882101923" TEXT="npm uninstall --save &lt;package-name&gt;">
<node CREATED="1509882105795" ID="ID_678037997" MODIFIED="1509882123347" TEXT="with --save it will also update package.json dependencies"/>
<node CREATED="1509882248041" ID="ID_479588617" MODIFIED="1509882260353" TEXT="use --save-dev to remove from devDeps"/>
</node>
<node CREATED="1509882499978" ID="ID_1037809325" MODIFIED="1509882507475" TEXT="-g for global"/>
</node>
</node>
<node CREATED="1509574138714" ID="ID_1771805202" MODIFIED="1509574141982" POSITION="right" TEXT="protips">
<node CREATED="1509574141983" ID="ID_688885262" MODIFIED="1509574654105" TEXT="node_modules/.bin dir contains symlinks to all installed modules ">
<node CREATED="1509574539734" ID="ID_615299321" MODIFIED="1509574552045" TEXT="if there is no symlink it means something isn&apos;t installed"/>
</node>
<node CREATED="1509575428933" ID="ID_1815661691" MODIFIED="1509575433725" TEXT="shortcuts">
<node CREATED="1509575417727" ID="ID_422196911" MODIFIED="1509575435531" TEXT="install">
<node CREATED="1509575423394" ID="ID_394347959" MODIFIED="1509575426107" TEXT="i"/>
</node>
<node CREATED="1509575405237" ID="ID_1978970632" MODIFIED="1509575438673" TEXT="--save-dev">
<node CREATED="1509575411054" ID="ID_452854394" MODIFIED="1509575415830" TEXT="-D"/>
</node>
<node CREATED="1510692379199" ID="ID_979939017" MODIFIED="1510692392120" TEXT="$ npm home &lt;package_name&gt;">
<node CREATED="1510692392121" ID="ID_336322651" MODIFIED="1510692406235" TEXT="opens home page for the package"/>
</node>
<node CREATED="1510692440320" ID="ID_1964925674" MODIFIED="1510692452069" TEXT="$ npm bugs &lt;package_name&gt;">
<node CREATED="1510692452070" ID="ID_268185060" MODIFIED="1510692466275" TEXT="opens issues page"/>
</node>
<node CREATED="1510692468069" ID="ID_1577093971" MODIFIED="1510692480919" TEXT="$ npm repo &lt;package_name&gt;">
<node CREATED="1510692480920" ID="ID_625399534" MODIFIED="1510692488815" TEXT="opens git repo"/>
</node>
</node>
</node>
<node CREATED="1509455500701" ID="ID_1602246088" MODIFIED="1509455543254" POSITION="right" TEXT="Setting default settings">
<node CREATED="1509455508732" ID="ID_1261843922" MODIFIED="1509455665094" TEXT="~/.npmrc">
<node CREATED="1509455645311" ID="ID_839496025" MODIFIED="1509455660050" TEXT="init-authour-name=Kent C. Dodds"/>
<node CREATED="1509455665475" ID="ID_1314143992" MODIFIED="1509455671859" TEXT="init-author-email"/>
<node CREATED="1509455672090" ID="ID_1675220365" MODIFIED="1509455680073" TEXT="init-license"/>
<node CREATED="1509456261294" ID="ID_1763608460" MODIFIED="1509456342105" TEXT="save-exact=true">
<node CREATED="1509456265341" ID="ID_884139152" MODIFIED="1509456293722" TEXT="will not add carret to dependencies when --save - meaning the exact version will be stored"/>
</node>
</node>
<node CREATED="1509455526204" ID="ID_1983544235" MODIFIED="1509455537656" TEXT="Settings that can be populated when doing npm init">
<node CREATED="1510691755857" ID="ID_223410899" MODIFIED="1510691765143" TEXT="$ npm init --yes">
<node CREATED="1510691765144" ID="ID_1478566130" MODIFIED="1510691779734" TEXT="will populate package.json using these default settings"/>
</node>
</node>
<node CREATED="1509455817092" ID="ID_612677204" MODIFIED="1509455825127" TEXT="Can be also set this way">
<node CREATED="1509455770638" ID="ID_115693059" MODIFIED="1509455855577" TEXT="npm config set init-author-name &quot;name&quot;"/>
<node CREATED="1510691805736" ID="ID_1328941217" MODIFIED="1510691821683" TEXT="npm config set init.author.email YOUR_EMAIL"/>
<node CREATED="1510692587658" ID="ID_885933633" MODIFIED="1510692600276" TEXT="npm config set save-prefix=&quot;~&quot;">
<node CREATED="1510692600276" ID="ID_940517934" MODIFIED="1510692622393" TEXT="Use patch updates when npm i --save"/>
<node CREATED="1510692622844" ID="ID_535238392" MODIFIED="1510692633940" TEXT="By default it is minor ^"/>
</node>
</node>
</node>
<node CREATED="1509272620720" ID="ID_1841925240" MODIFIED="1510691136755" POSITION="left" TEXT="npm version">
<node CREATED="1510691298298" ID="ID_50794990" MODIFIED="1510691305776" TEXT="Check npm version">
<node CREATED="1510691387395" ID="ID_1131241034" MODIFIED="1510691392952" TEXT="$ npm -v">
<node CREATED="1510691432030" ID="ID_1760162126" MODIFIED="1510691441747" TEXT="$ npm --version"/>
</node>
<node CREATED="1510691396486" ID="ID_445651006" MODIFIED="1510691404439" TEXT="$ npm version">
<node CREATED="1510691404440" ID="ID_561519078" MODIFIED="1510691428891" TEXT="Prints version number of node, v8, openSSL etc"/>
</node>
</node>
<node CREATED="1510691306499" ID="ID_1226513549" MODIFIED="1510691313098" TEXT="Bump package version">
<node CREATED="1509272627113" ID="ID_196509131" MODIFIED="1510691316011" TEXT="&quot;major&quot; or &quot;minor&quot; or &quot;patch&quot; ... and more"/>
<node CREATED="1509273966527" ID="ID_1859879551" MODIFIED="1510691334768" TEXT="$ npm version major">
<node CREATED="1509273972454" ID="ID_1613391248" MODIFIED="1509273991962" TEXT="will update version number from 1.0.0 to 2.0.0 (for example) in package.json version"/>
<node CREATED="1509273993404" ID="ID_922838041" MODIFIED="1509274190025" TEXT="will add a tag (2.0.0) to github repository"/>
</node>
</node>
</node>
<node CREATED="1510691148294" ID="ID_355852743" MODIFIED="1510691152857" POSITION="left" TEXT="npm help">
<node CREATED="1510691370667" ID="ID_942180946" MODIFIED="1510691386835" TEXT="$ npm help version"/>
</node>
<node CREATED="1510691632534" ID="ID_703527942" MODIFIED="1510691638494" POSITION="left" TEXT="package.json">
<node CREATED="1508785758730" ID="ID_1200045211" MODIFIED="1508787157540" TEXT="package.json &quot;files&quot;: [&quot;dist&quot;]">
<node CREATED="1508785818895" ID="ID_671191896" MODIFIED="1508785931474" TEXT="Specify what files and directories are going to be archived into package and sent to npm repository"/>
<node CREATED="1508787157541" ID="ID_283793098" MODIFIED="1508787171605" TEXT="readme and licence are included by default"/>
<node CREATED="1508787425167" ID="ID_926899187" MODIFIED="1508787459401" TEXT="if we exclude the src folder we need to remember to update our package.json main property to point at &quot;dist/index.js&quot; instead"/>
</node>
<node CREATED="1509456040181" ID="ID_1836594944" MODIFIED="1509456138581" TEXT="package.json main">
<node CREATED="1509456044759" ID="ID_764375356" MODIFIED="1509456087612" TEXT="this is what is going to be provided when someone adds the library as a dependency and loads with require(&apos;your-lib-name&apos;)"/>
<node CREATED="1509456138582" ID="ID_1663368462" MODIFIED="1509456151393" TEXT="main: &quot;src/index.js&quot;"/>
</node>
<node CREATED="1508668632432" ID="ID_233814540" MODIFIED="1508668695908" TEXT="package.json scripts.validate">
<node CREATED="1508668643077" ID="ID_509633007" MODIFIED="1508668693439" TEXT="When somebody comes to help us maintain our project, we want them to be able to validate they are set up after running npm install"/>
<node CREATED="1508668696357" ID="ID_19111484" MODIFIED="1508668747982" TEXT="&quot;validate&quot;: &quot;npm-run-all --parallel test lint build&quot;"/>
<node CREATED="1508668771956" ID="ID_308868703" MODIFIED="1508668795302" TEXT="Thanks to npm-run-all all things will run simultaneously"/>
</node>
</node>
<node CREATED="1510692179849" ID="ID_1758289466" MODIFIED="1510692186096" POSITION="left" TEXT="Search packages">
<node CREATED="1510692186097" ID="ID_1521112462" MODIFIED="1510692208844" TEXT="npms.io">
<node CREATED="1510692208845" ID="ID_1044570256" MODIFIED="1510692222632" TEXT="Breakdown by quality, popularity and maintance">
<node CREATED="1510692222633" ID="ID_111273298" MODIFIED="1510692242671" TEXT="based on number of outdated deps, linter conf, tests, last commit date"/>
</node>
</node>
</node>
<node CREATED="1510694246086" ID="ID_255852120" MODIFIED="1510694642975" POSITION="left" TEXT="Install">
<node CREATED="1510694249869" ID="ID_907932263" MODIFIED="1510694676568" TEXT="$ npm install --production">
<node CREATED="1510694262152" ID="ID_1125383208" MODIFIED="1510694293870" TEXT="Install dependencies only (without dev)"/>
<node CREATED="1510694647376" ID="ID_600437891" MODIFIED="1510694664067" TEXT="or $ NODE_ENV=production npm install"/>
</node>
<node CREATED="1510695798500" ID="ID_1167469599" MODIFIED="1510695807957" TEXT="npm link">
<node CREATED="1510695807958" ID="ID_477748126" MODIFIED="1510695841852" TEXT="Creates a symlink in the global folder that links to the package where the npm link was executed"/>
<node CREATED="1510695885863" ID="ID_797805716" MODIFIED="1510695907939" TEXT="1.">
<node CREATED="1510695851792" ID="ID_522613972" MODIFIED="1510695918805" TEXT="/projects/mylib $ npm link">
<node CREATED="1510695874491" ID="ID_1888245544" MODIFIED="1510695885720" TEXT="Create a symlink to the global folder"/>
</node>
</node>
<node CREATED="1510695922266" ID="ID_416549993" MODIFIED="1510695924516" TEXT="2.">
<node CREATED="1510695924517" ID="ID_1173902978" MODIFIED="1510695943009" TEXT="/projects/myproj $ npm link mylib">
<node CREATED="1510695943010" ID="ID_1627371814" MODIFIED="1510695971040" TEXT="link mylib to the current node_modules"/>
</node>
</node>
<node CREATED="1510695971601" ID="ID_41809933" MODIFIED="1510695973948" TEXT="3.">
<node CREATED="1510695973949" ID="ID_233400240" MODIFIED="1510695999366" TEXT="require(&apos;mylib&apos;) will include the module from projects/mylib"/>
</node>
</node>
</node>
<node CREATED="1511779159207" ID="ID_411991713" MODIFIED="1511779216591" POSITION="left" TEXT="npx">
<node CREATED="1511779173145" ID="ID_1462524087" MODIFIED="1511779182680" TEXT="Node.js package executor"/>
<node CREATED="1511779216592" ID="ID_524969345" MODIFIED="1511779229728" TEXT="1. Execute local binaries">
<node CREATED="1511779329894" ID="ID_1309187268" MODIFIED="1511779469443" TEXT="When I install project locally  &quot;$ npm i serverless&quot; I can only run it referring to the full path">
<node CREATED="1511779465971" ID="ID_1370355305" MODIFIED="1511779533033" TEXT="./node_modules/.bin/serverless create --template aws-node"/>
</node>
<node CREATED="1511779601922" ID="ID_56525793" MODIFIED="1511779616663" TEXT="$ npx serverless create --template aws-node"/>
</node>
<node CREATED="1511779257618" ID="ID_196862473" MODIFIED="1511779267465" TEXT="2. Run uninstalled binaries">
<node CREATED="1511779648898" ID="ID_131047791" MODIFIED="1511779730008" TEXT="Don&apos;t need to install depencies like react-create or yeoman locally since we use them once and then forget for a long time and then if we want to use them again they are outdated and need to install them again. With npx we can get them without installing locally - they will be cached and removed after use"/>
</node>
<node CREATED="1511779285272" ID="ID_848195903" MODIFIED="1511779292902" TEXT="3. Run command strings"/>
<node CREATED="1511779847226" ID="ID_1988581013" MODIFIED="1511779933077" TEXT="Pull directly from github specific branch without creating npm link">
<node CREATED="1511779869931" ID="ID_1938867132" MODIFIED="1511779906731" TEXT="npx https://github.com/serverless/serverless.gi\#fix-dev-dep"/>
</node>
</node>
</node>
</map>
