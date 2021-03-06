<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508441258413" ID="ID_681257263" MODIFIED="1508877164711" TEXT="JS Project">
<node CREATED="1508441469746" ID="ID_378442697" MODIFIED="1509881926404" POSITION="left" TEXT="NPM">
<node CREATED="1509455500701" ID="ID_1602246088" MODIFIED="1509455543254" TEXT="Setting default settings">
<node CREATED="1509455508732" ID="ID_1261843922" MODIFIED="1509455665094" TEXT="~/.npmrc">
<node CREATED="1509455645311" ID="ID_839496025" MODIFIED="1509455660050" TEXT="init-authour-name=Kent C. Dodds"/>
<node CREATED="1509455665475" ID="ID_1314143992" MODIFIED="1509455671859" TEXT="init-author-email"/>
<node CREATED="1509455672090" ID="ID_1675220365" MODIFIED="1509455680073" TEXT="init-license"/>
<node CREATED="1509456261294" ID="ID_1763608460" MODIFIED="1509456342105" TEXT="save-exact=true">
<node CREATED="1509456265341" ID="ID_884139152" MODIFIED="1509456293722" TEXT="will not add carret to dependencies when --save - meaning the exact version will be stored"/>
</node>
</node>
<node CREATED="1509455526204" ID="ID_1983544235" MODIFIED="1509455537656" TEXT="Settings that can be populated when doing npm init"/>
<node CREATED="1509455817092" ID="ID_612677204" MODIFIED="1509455825127" TEXT="Can be also set this way">
<node CREATED="1509455770638" ID="ID_115693059" MODIFIED="1509455855577" TEXT="npm config set init-author-name &quot;name&quot;"/>
</node>
</node>
<node CREATED="1509455572163" ID="ID_1539718382" MODIFIED="1509455603152" TEXT="app configuration in package.json">
<node CREATED="1508445656055" ID="ID_1372719283" MODIFIED="1508445834618" TEXT="NPM allows library users to configure dependecies (that support that) to put their settings to the config property. This means that the settings shouldn&apos;t be in the root of the package.json. This way if NPM decides to put a property with the same name as the name of the library, there won&apos;t be any conflict.">
<node CREATED="1508445847471" ID="ID_996446834" MODIFIED="1508445896369" TEXT="&quot;config&quot;: {&#xa;   &quot;yourlib&quot;: {}&#xa;}"/>
</node>
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
<node CREATED="1508785140170" ID="ID_1276890567" MODIFIED="1508785662946" TEXT="npm pack">
<node CREATED="1508785153616" ID="ID_360716989" MODIFIED="1508785493056" TEXT="This is what is called internally when we publish to repo."/>
<node CREATED="1508785493581" ID="ID_1444705467" MODIFIED="1508785514904" TEXT="We can use this to see what is sent to the repo to make sure it doesn&apos;t send something we don&apos;t want."/>
<node CREATED="1508785516854" ID="ID_796657069" MODIFIED="1508785632816" TEXT="It will create archive: name-of-project-1.0.0.tgz"/>
<node CREATED="1508785664008" ID="ID_1905628590" MODIFIED="1508785684555" TEXT="When we do that we will figure out that we don&apos;t need to include some directories like src or test."/>
</node>
<node CREATED="1508785758730" ID="ID_1200045211" MODIFIED="1508787157540" TEXT="package.json &quot;files&quot;: [&quot;dist&quot;]">
<node CREATED="1508785818895" ID="ID_671191896" MODIFIED="1508785931474" TEXT="Specify what files and directories are going to be archived into package and sent to npm repository"/>
<node CREATED="1508787157541" ID="ID_283793098" MODIFIED="1508787171605" TEXT="readme and licence are included by default"/>
<node CREATED="1508787425167" ID="ID_926899187" MODIFIED="1508787459401" TEXT="if we exclude the src folder we need to remember to update our package.json main property to point at &quot;dist/index.js&quot; instead"/>
</node>
<node CREATED="1509050799931" ID="ID_763292013" MODIFIED="1509051368237" TEXT="publishing to">
<node CREATED="1509050804221" ID="ID_1704659769" MODIFIED="1509051367977" TEXT="Register to NPM"/>
<node CREATED="1509051368238" ID="ID_797223392" MODIFIED="1509051379102" TEXT="npm login">
<node CREATED="1509051379103" ID="ID_774990007" MODIFIED="1509051398077" TEXT="Could be prepopulated if details are in .npmrc"/>
</node>
<node CREATED="1509051501672" ID="ID_603632973" MODIFIED="1509051506223" TEXT="npm publish"/>
<node CREATED="1509053467034" ID="ID_1317240814" MODIFIED="1509053495698" TEXT="Why do I have to publish again with a higher version number even for a tiny change (a mistake for example)">
<node CREATED="1509053496663" ID="ID_882469185" MODIFIED="1509053546815" TEXT="For safety reasons - a person could update a package we are using without our knowledge"/>
<node CREATED="1509053547739" ID="ID_532230839" MODIFIED="1509053556799" TEXT="Hence version numbers are locked"/>
</node>
</node>
<node CREATED="1509272620720" ID="ID_1841925240" MODIFIED="1509273353412" TEXT="npm version">
<node CREATED="1509272627113" ID="ID_196509131" MODIFIED="1509273950761" TEXT="&quot;major&quot; or &quot;minor&quot; or &quot;patch&quot; ... and more"/>
<node CREATED="1509273966527" ID="ID_1859879551" MODIFIED="1509273972453" TEXT="npm version major">
<node CREATED="1509273972454" ID="ID_1613391248" MODIFIED="1509273991962" TEXT="will update version number from 1.0.0 to 2.0.0 (for example) in package.json version"/>
<node CREATED="1509273993404" ID="ID_922838041" MODIFIED="1509274190025" TEXT="will add a tag (2.0.0) to github repository"/>
</node>
</node>
<node CREATED="1509273148896" ID="ID_59361309" MODIFIED="1509274276491" TEXT="npm deprecate">
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
<node CREATED="1509364467390" ID="ID_1849046675" MODIFIED="1509364471549" TEXT="shrinkwap">
<node CREATED="1509364471550" ID="ID_210364550" MODIFIED="1509364477015" TEXT="lock version numbers">
<node CREATED="1509364477016" ID="ID_368148668" MODIFIED="1509364502631" TEXT="an author can release a patch release of his lib and infect all people that didn&apos;t lock their versions"/>
</node>
</node>
<node CREATED="1509881927511" ID="ID_1860805720" MODIFIED="1509881945191" TEXT="managing packages">
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
<node CREATED="1509574138714" ID="ID_1771805202" MODIFIED="1509574141982" TEXT="protips">
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
</node>
</node>
</node>
<node CREATED="1509452586062" ID="ID_854846391" MODIFIED="1509454455547" POSITION="right" TEXT="Formal requirements">
<node CREATED="1509452594156" ID="ID_228754411" MODIFIED="1509452600527" TEXT="License">
<node CREATED="1509452611356" ID="ID_1603123203" MODIFIED="1509452650736" TEXT="check opensource.org/osd (open source definition)"/>
<node CREATED="1509453555040" ID="ID_1971140471" MODIFIED="1509453558030" TEXT="LICENCE">
<node CREATED="1509453558031" ID="ID_1902911825" MODIFIED="1509453561873" TEXT="no extension"/>
</node>
</node>
<node CREATED="1509452601048" ID="ID_434128009" MODIFIED="1509452606768" TEXT="Code of conduct">
<node CREATED="1509452785249" ID="ID_908530200" MODIFIED="1509452851844" TEXT="to make sure people behave appropriately or not making other uncomfortable"/>
<node CREATED="1509454360159" ID="ID_1509758305" MODIFIED="1509454372720" TEXT="CODE_OF_CONDUCT.md"/>
<node CREATED="1509454373318" ID="ID_327934740" MODIFIED="1509454387975" TEXT="source: contributor-covenant.org">
<node CREATED="1509454504423" ID="ID_1598442055" MODIFIED="1509454540017" TEXT="insert your email in the enforcement section"/>
</node>
</node>
<node CREATED="1509452607248" ID="ID_1642233640" MODIFIED="1509452610927" TEXT="Readme">
<node CREATED="1509453562078" ID="ID_551864302" MODIFIED="1509453570017" TEXT="README.md"/>
</node>
</node>
<node CREATED="1508441480456" ID="ID_1759992579" MODIFIED="1508441486801" POSITION="right" TEXT="ESLint">
<node CREATED="1509538969380" ID="ID_974851872" MODIFIED="1509538999025" TEXT="best practice - install locally npm i eslint --save-dev"/>
<node CREATED="1509463585484" ID="ID_1938630315" MODIFIED="1509463590544" TEXT="configure">
<node CREATED="1509463590546" ID="ID_677956270" MODIFIED="1509463615290" TEXT="package.json scripts.lint: &quot;eslint .&quot;">
<node CREATED="1509463631166" ID="ID_487502346" MODIFIED="1509463643609" TEXT="by default it will skip node_modules"/>
</node>
<node CREATED="1509463733534" ID="ID_1821336683" MODIFIED="1509463744915" TEXT="run $eslint --init">
<node CREATED="1509463744916" ID="ID_174225969" MODIFIED="1509463780991" TEXT="it will run trhough the code and create a config based off of what it determines is your style "/>
</node>
<node CREATED="1509463918842" ID="ID_672467711" MODIFIED="1509538721845" TEXT="or manually configure .eslintrc">
<node CREATED="1509535388025" ID="ID_365731461" MODIFIED="1509535392923" TEXT="env">
<node CREATED="1509535392924" ID="ID_654038827" MODIFIED="1509535414827" TEXT="browser: true">
<node CREATED="1509535414828" ID="ID_1769409017" MODIFIED="1509535456665" TEXT="will not complain about seeing xhr or window etc"/>
</node>
<node CREATED="1509535405068" ID="ID_1295672647" MODIFIED="1509535411222" TEXT="node: true">
<node CREATED="1509535441645" ID="ID_1750432827" MODIFIED="1509535451352" TEXT="will not complain about require etc"/>
</node>
<node CREATED="1509538288038" ID="ID_230851465" MODIFIED="1509538294092" TEXT="es6: true"/>
</node>
<node CREATED="1509535457516" ID="ID_1018470579" MODIFIED="1509535462094" TEXT="extends">
<node CREATED="1508787292442" ID="ID_1883122762" MODIFIED="1509538957088" TEXT="extends">
<node CREATED="1508787307529" ID="ID_1983112806" MODIFIED="1508787313062" TEXT="best-practices"/>
<node CREATED="1508787313532" ID="ID_768097822" MODIFIED="1508787325477" TEXT="possible-errors"/>
</node>
<node CREATED="1509538746648" ID="ID_1338031507" MODIFIED="1509538795312" TEXT="extend/inherit rules, then whatever is specified in rules will override it"/>
<node CREATED="1509535606894" ID="ID_404135740" MODIFIED="1509535627433" TEXT="array of npm modules">
<node CREATED="1509535914709" ID="ID_1926505725" MODIFIED="1509535932721" TEXT="they are actually in node_modules like an other npm dependencies"/>
<node CREATED="1509538839976" ID="ID_553449271" MODIFIED="1509538855759" TEXT="or built in: &quot;eslint:recommended&quot;"/>
</node>
<node CREATED="1509535627434" ID="ID_1469785459" MODIFIED="1509535644388" TEXT="for example eslint-config-kentcdodds/best-practices">
<node CREATED="1509535653140" ID="ID_841845005" MODIFIED="1509535840286" TEXT="can be saved as kentcdodds/best-practices">
<node CREATED="1509535675956" ID="ID_640984902" MODIFIED="1509535683279" TEXT="eslint-config can be dropped"/>
<node CREATED="1509535840287" ID="ID_905295510" MODIFIED="1509535848374" TEXT="or &quot;./other/linter.js&quot;"/>
<node CREATED="1509535864483" ID="ID_1483638936" MODIFIED="1509535873961" TEXT="resolved like a normal node module"/>
</node>
<node CREATED="1509535671603" ID="ID_501859517" MODIFIED="1509535707997" TEXT="eslint-config-ketcdodds is an npm repo and best-practice is a js file with the rules"/>
<node CREATED="1509535729518" ID="ID_745678621" MODIFIED="1509535757857" TEXT="rules file is like eslintrc, it has env and rules definitions"/>
</node>
<node CREATED="1509536888452" ID="ID_1663681447" MODIFIED="1509536904325" TEXT="search of eslint-config on npm ">
<node CREATED="1509537128318" ID="ID_1087308874" MODIFIED="1509537130393" TEXT="https://github.com/kentcdodds/eslint-config-kentcdodds/"/>
</node>
</node>
<node CREATED="1509535462561" ID="ID_560639610" MODIFIED="1509536671415" TEXT="rules">
<node CREATED="1509536672769" ID="ID_1730407120" MODIFIED="1509536727657" TEXT="rulename: [reporting_type, rule option]">
<node CREATED="1509536727658" ID="ID_729282102" MODIFIED="1509536734950" TEXT="reporting type">
<node CREATED="1509536734950" ID="ID_1448785331" MODIFIED="1509538637635" TEXT="0 - off"/>
<node CREATED="1509536739658" ID="ID_1522342199" MODIFIED="1509536743711" TEXT="1 - warning">
<node CREATED="1509539812412" ID="ID_1545881620" MODIFIED="1509539844445" TEXT="will not affect the exit code of ESLint"/>
</node>
<node CREATED="1509536743865" ID="ID_1434674931" MODIFIED="1509536754793" TEXT="2 - error"/>
</node>
</node>
<node CREATED="1509536625883" ID="ID_590781162" MODIFIED="1509536809757" TEXT="&quot;quotes&quot;: [2, &quot;single&quot;]">
<node CREATED="1509536767170" ID="ID_452440345" MODIFIED="1509536791998" TEXT="report error if quotes aren&apos;t single, if double quite is found"/>
</node>
<node CREATED="1509536813055" ID="ID_385802780" MODIFIED="1509536822161" TEXT="&quot;eqeqeq&quot;: 0">
<node CREATED="1509536822162" ID="ID_1390006010" MODIFIED="1509536843693" TEXT="ignore if there are lines without strong comparison ==="/>
</node>
<node CREATED="1509538362738" ID="ID_1122308699" MODIFIED="1509538398099" TEXT="&quot;indent&quot;: [&quot;error&quot;, 4]"/>
</node>
<node CREATED="1509536565904" ID="ID_1431283238" MODIFIED="1509536568082" TEXT="globals">
<node CREATED="1509536568083" ID="ID_266409898" MODIFIED="1509536590923" TEXT="&quot;angular&quot;: 1">
<node CREATED="1509536574768" ID="ID_205142292" MODIFIED="1509536590690" TEXT="will not complain about undefined variable "/>
<node CREATED="1509536590924" ID="ID_1376407097" MODIFIED="1509536616176" TEXT="in this case will assume that angular comes from an imported lib that puts something to the global namespace"/>
</node>
</node>
<node CREATED="1509540235248" ID="ID_791434860" MODIFIED="1509540238427" TEXT="plugins">
<node CREATED="1509540238428" ID="ID_1273846853" MODIFIED="1509540264142" TEXT="allow importing custom rules (definitions of the rules))"/>
</node>
</node>
<node CREATED="1509535268591" ID="ID_439264287" MODIFIED="1509535273265" TEXT="atom.io">
<node CREATED="1509535273267" ID="ID_834844740" MODIFIED="1509535277913" TEXT="linter"/>
<node CREATED="1509535278137" ID="ID_1079363766" MODIFIED="1509535285489" TEXT="linter-eslint"/>
</node>
</node>
<node CREATED="1509538413788" ID="ID_1478101492" MODIFIED="1509538415813" TEXT="run">
<node CREATED="1509538415814" ID="ID_535469709" MODIFIED="1509538419318" TEXT="eslint .">
<node CREATED="1509538538435" ID="ID_933691788" MODIFIED="1509538554217" TEXT="--fix attempts to automatically solve problems"/>
</node>
</node>
</node>
<node CREATED="1508441488887" ID="ID_575130199" MODIFIED="1508873000085" POSITION="left" TEXT="Tests">
<node CREATED="1508441689333" ID="ID_652506921" MODIFIED="1508441695636" TEXT="Test Runners">
<node CREATED="1508441495016" ID="ID_687243647" MODIFIED="1508441497755" TEXT="Mocha">
<node CREATED="1509573326357" ID="ID_375577574" MODIFIED="1509573644160" TEXT="configuration">
<node CREATED="1509573333175" ID="ID_450115251" MODIFIED="1509573358914" TEXT="test/mocha.opts">
<node CREATED="1509573572506" ID="ID_1504868586" MODIFIED="1509573600930" TEXT="whatever is in the file - it will be added to the command line arguments of mocha"/>
</node>
<node CREATED="1509573646050" ID="ID_935838889" MODIFIED="1509575883500" TEXT="package.json scripts">
<node CREATED="1509575885240" ID="ID_296675600" MODIFIED="1509575888039" TEXT=".test: &quot;mocha&quot;"/>
<node CREATED="1509575889997" ID="ID_1850644683" MODIFIED="1509575915604" TEXT=".watch:test: &quot;mocha --watch&quot;"/>
</node>
</node>
<node CREATED="1509573603903" ID="ID_496477899" MODIFIED="1509573606989" TEXT="run">
<node CREATED="1509573606990" ID="ID_1655755596" MODIFIED="1509573611891" TEXT="mocha &lt;path&gt;"/>
<node CREATED="1509573745057" ID="ID_895363055" MODIFIED="1509573757428" TEXT="if package.json script.test added">
<node CREATED="1509573757429" ID="ID_967957566" MODIFIED="1509573765006" TEXT="npm run test">
<node CREATED="1509573765007" ID="ID_1749629050" MODIFIED="1509573771799" TEXT="npm test">
<node CREATED="1509573771800" ID="ID_1203706979" MODIFIED="1509573774883" TEXT="npm t"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1508441696873" ID="ID_33736853" MODIFIED="1508441700047" TEXT="Assertions">
<node CREATED="1508441498865" ID="ID_229207052" MODIFIED="1508441710605" TEXT="Chai">
<node CREATED="1509574118417" ID="ID_433699117" MODIFIED="1509574127886" TEXT="require(&apos;chai&apos;).expect"/>
</node>
</node>
<node CREATED="1508441739808" ID="ID_1655046524" MODIFIED="1508441744994" TEXT="Code coverage">
<node CREATED="1508441744995" ID="ID_1034413683" MODIFIED="1508443480359" TEXT="NYC">
<node CREATED="1508441992068" ID="ID_1269475536" MODIFIED="1508441999741" TEXT="Consist of 4 metrics">
<node CREATED="1508441999742" ID="ID_675664093" MODIFIED="1508442005654" TEXT="Lines"/>
<node CREATED="1508442006090" ID="ID_1569409222" MODIFIED="1508442009342" TEXT="Branches"/>
<node CREATED="1508442009753" ID="ID_1113020642" MODIFIED="1508442013768" TEXT="Functions"/>
<node CREATED="1508442014190" ID="ID_493187841" MODIFIED="1508442071710" TEXT="Statements"/>
</node>
<node CREATED="1508442236989" ID="ID_878294486" MODIFIED="1508442475127" TEXT="Uses instrumentation">
<node CREATED="1508442250523" ID="ID_1988114919" MODIFIED="1508442415676" TEXT="Creates global object __coverage__ and it&apos;s properties have values that represent how many times a certain line or something was run"/>
<node CREATED="1508442547232" ID="ID_902615605" MODIFIED="1508442900047" TEXT="This statements will be placed before every of the metrics in the code and they will be incremented every time that metric is run">
<node CREATED="1508442646412" ID="ID_1070106719" MODIFIED="1508442652409" TEXT="functions">
<node CREATED="1508442652410" ID="ID_254199912" MODIFIED="1508442715853" TEXT="function function_name() {&#xa;   __coverage__[&apos;abcdef&apos;++]&#xa;}"/>
<node CREATED="1508443086121" ID="ID_1864822871" MODIFIED="1508443232281" TEXT="// es6 default parameters&#xa;function function_name(foo = (__coverage__[&apos;dfad&apos;]++, &apos;hi&apos;)) {&#xa;   __coverage__[&apos;abcdef&apos;]++&#xa;}"/>
<node CREATED="1508443131872" ID="ID_473611177" MODIFIED="1508443221841" TEXT="function function_name() {&#xa;   __coverage__[&apos;abcdef&apos;]++&#xa;}"/>
</node>
<node CREATED="1508442722037" ID="ID_76065212" MODIFIED="1508442737251" TEXT="statements">
<node CREATED="1508442737252" ID="ID_1419629057" MODIFIED="1508442787348" TEXT="if (true) {&#xa;   __coverage__[&apos;abcd&apos;]++&#xa;} else {&#xa;   __coverage__[&apos;abcdd&apos;]++&#xa;}"/>
<node CREATED="1508442989720" ID="ID_541473159" MODIFIED="1508443043729" TEXT="const v = b ? (__coverage__[&apos;def&apos;]++, &apos;hi&apos;) : &apos;yo&apos;"/>
</node>
<node CREATED="1508442829560" ID="ID_776683608" MODIFIED="1508442845167" TEXT="lines">
<node CREATED="1508442475127" ID="ID_786201255" MODIFIED="1508442848107" TEXT="__coverage__[&apos;adfafad]&apos;++"/>
</node>
</node>
<node CREATED="1508443290530" ID="ID_293316617" MODIFIED="1508443390604" TEXT="Instrumenter will run report out of that and  indicate which parts of code weren&apos;t called / are not called in the tests">
<node CREATED="1508443826234" ID="ID_759659024" MODIFIED="1508445472359" TEXT="File          % Stmts    % Branch    % Funcs    %Lines    Uncovered Lines&#xa;-------------------------------------------------------&#xa;index.js    75           100           0              75         13"/>
</node>
</node>
<node CREATED="1508443483215" ID="ID_9852039" MODIFIED="1508447393021" TEXT="Configuration">
<node CREATED="1508443493519" ID="ID_1539061543" MODIFIED="1508443497793" TEXT="package.json">
<node CREATED="1508443497794" ID="ID_1994740533" MODIFIED="1508443537282" TEXT="devDependencies">
<node CREATED="1508443537283" ID="ID_1786364878" MODIFIED="1508443538987" TEXT="&quot;nyc&quot;:&quot;7.1.0&quot;"/>
</node>
<node CREATED="1508443573442" ID="ID_1650168441" MODIFIED="1508443576074" TEXT="scripts">
<node CREATED="1508443576076" ID="ID_550291670" MODIFIED="1508443611829" TEXT="&quot;test&quot;: &quot;nyc mocha&quot;"/>
</node>
</node>
<node CREATED="1508445508487" ID="ID_962307011" MODIFIED="1508445545041" TEXT="Unfortunately there is no .nycrc file, all conf is done by using params"/>
<node CREATED="1508445589070" ID="ID_333488" MODIFIED="1508445604077" TEXT="nyc property in the root of the package.json">
<node CREATED="1508446101245" ID="ID_368375876" MODIFIED="1508446121420" TEXT="&quot;nyc&quot;: {}"/>
<node CREATED="1508446125124" ID="ID_1507568974" MODIFIED="1508446136242" TEXT="&quot;check-coverage&quot;: true">
<node CREATED="1508446208736" ID="ID_615223231" MODIFIED="1508446275796" TEXT="When running tests is done and coverage is checked, it will verify that the coverage matches a certain threshold"/>
</node>
<node CREATED="1508446570588" ID="ID_334186886" MODIFIED="1508446641869" TEXT="&quot;branches&quot;: 100,&#xa;&quot;functions&quot;: 100,&#xa;&quot;lines&quot;: 100,&#xa;&quot;statements&quot;: 100">
<node CREATED="1508446646081" ID="ID_539768327" MODIFIED="1508446653803" TEXT="Threshold settings"/>
</node>
<node CREATED="1508447109987" ID="ID_51892035" MODIFIED="1508447123536" TEXT="&quot;reporter&quot;: []">
<node CREATED="1508447123538" ID="ID_744697554" MODIFIED="1508447128495" TEXT="&quot;text&quot;">
<node CREATED="1508447128496" ID="ID_1718907781" MODIFIED="1508447145858" TEXT="Generates text report (stdout)"/>
</node>
<node CREATED="1508447146541" ID="ID_1494436326" MODIFIED="1508447151712" TEXT="&quot;lcov&quot;">
<node CREATED="1508447151713" ID="ID_901674993" MODIFIED="1508447219216" TEXT="html in the /coverage/lcov-report dir">
<node CREATED="1508447263027" ID="ID_739523893" MODIFIED="1508447289921" TEXT="Report will allow clicking on every file to see which lines aren&apos;t covered"/>
<node CREATED="1508447312717" ID="ID_1194240988" MODIFIED="1508447329669" TEXT="We will also see how many times each line in the source code was run"/>
</node>
</node>
</node>
<node CREATED="1508448725579" ID="ID_1975627797" MODIFIED="1508448735100" TEXT="&quot;include&quot;: []">
<node CREATED="1508448735101" ID="ID_65892464" MODIFIED="1508448739574" TEXT="&quot;src&quot;">
<node CREATED="1508448739575" ID="ID_1288401087" MODIFIED="1508448783259" TEXT="Will only instrument files in the src/ directory">
<node CREATED="1508448830286" ID="ID_487988967" MODIFIED="1508448984512" TEXT="NYC is smart enough to not include files in any /test folders or files that are file.test.js or __test__ (we don&apos;t want to instrument tests themselves)!"/>
</node>
</node>
</node>
</node>
<node CREATED="1508447394089" ID="ID_1268287163" MODIFIED="1508447416631" TEXT="Doesn&apos;t work correctly in the watch mode because it counts lines until the process exits"/>
</node>
<node CREATED="1508447776425" ID="ID_1678211678" MODIFIED="1508447831430" TEXT="NYC and Istanbul merged, NYC is the official cli for Istanbul and instanbul is used to instrument the code"/>
<node CREATED="1508448648392" ID="ID_1300758092" MODIFIED="1508448656737" TEXT=".gitignore">
<node CREATED="1508448656738" ID="ID_250318333" MODIFIED="1508448690130" TEXT=".nyc_output/"/>
<node CREATED="1508448672947" ID="ID_1499811685" MODIFIED="1508448684117" TEXT="coverage/"/>
</node>
</node>
</node>
<node CREATED="1508873000958" ID="ID_879864691" MODIFIED="1508873003803" TEXT="General">
<node CREATED="1508873003805" ID="ID_790236074" MODIFIED="1508873017358" TEXT="You don&apos;t test the dependencies of your library or the tool set you&apos;re using"/>
</node>
<node CREATED="1509575712804" ID="ID_388715592" MODIFIED="1509575715471" TEXT="protip">
<node CREATED="1509575715472" ID="ID_1210853962" MODIFIED="1509575736579" TEXT="colocate tests with source files instead of having separate src and test dirs with mirror tree">
<node CREATED="1509575736579" ID="ID_1292085058" MODIFIED="1509575743459" TEXT="https://blog.kentcdodds.com/what-code-comments-can-teach-us-about-scaling-a-codebase-90bbfad8d70d"/>
</node>
</node>
</node>
<node CREATED="1508576443438" ID="ID_89088949" MODIFIED="1508579648202" POSITION="right" TEXT="Git Hooks">
<node CREATED="1508576572812" ID="ID_279744119" MODIFIED="1508577484123" TEXT="People forget to run linting or tests when committing "/>
<node CREATED="1508576689561" ID="ID_1597766982" MODIFIED="1508576709362" TEXT="Hooks directory is located inside of .git dir"/>
<node CREATED="1508577409646" ID="ID_1858367829" MODIFIED="1508581423536" TEXT="Hook scripts aren&apos;t committed to source control which is a problem when collaborating">
<node CREATED="1508581228559" ID="ID_1211885970" MODIFIED="1508581488372" TEXT="Hence we use ghooks that populates scripts to hooks folder (for all kind of hooks) and run scripts from package.json that is included in the source control"/>
<node CREATED="1508581492582" ID="ID_1174737370" MODIFIED="1508581829520" TEXT="For example pre-commit script in .git/hooks will be looking for the pre-commit property in the package.json config.ghooks.pre-commit:npm run validate "/>
</node>
<node CREATED="1508579099959" ID="ID_1942605798" MODIFIED="1508579114044" TEXT="In package.json in scripts">
<node CREATED="1508579114045" ID="ID_1316692389" MODIFIED="1508579132044" TEXT="npm-run-all --parallel lint test">
<node CREATED="1508579134723" ID="ID_785485887" MODIFIED="1508579260175" TEXT="npm-run-all runs scripts simultaneously - we can do this here as lint and test aren&apos;t dependant on each other"/>
<node CREATED="1508579314357" ID="ID_1146469400" MODIFIED="1508579334250" TEXT="lint and tests are also defined in scripts prop">
<node CREATED="1508579263621" ID="ID_1509720862" MODIFIED="1508579341551" TEXT="lint is &quot;lint&quot;: &quot;eslint src&quot;"/>
<node CREATED="1508579282998" ID="ID_563084697" MODIFIED="1508579336491" TEXT="test is &quot;test&quot;: &quot;nyc mocha&quot;"/>
</node>
</node>
</node>
<node CREATED="1508579536153" ID="ID_1963920693" MODIFIED="1508579599772" TEXT="If I want to still commit but without running tests, if I just need to fix commit msg for example">
<node CREATED="1508578901299" ID="ID_614392564" MODIFIED="1508579601377" TEXT="git commit -am &quot;Correcting something&quot; --no-verify"/>
</node>
<node CREATED="1508579649486" ID="ID_133959186" MODIFIED="1508579655081" TEXT="ghooks">
<node CREATED="1508579664289" ID="ID_1498904809" MODIFIED="1508579669522" TEXT="devDependency">
<node CREATED="1508579669523" ID="ID_1668092358" MODIFIED="1508579681297" TEXT="&quot;ghooks&quot;: &quot;1.3.2&quot;"/>
</node>
<node CREATED="1508579729450" ID="ID_16524698" MODIFIED="1508580245015" TEXT="configuration">
<node CREATED="1508579733661" ID="ID_577051937" MODIFIED="1508580243048" TEXT="in package.json config.ghooks"/>
<node CREATED="1508580245016" ID="ID_249429898" MODIFIED="1508580277420" TEXT="&quot;pre-commit&quot;: &quot;npm run validate&quot;"/>
<node CREATED="1508580818856" ID="ID_1812525796" MODIFIED="1508580991996" TEXT="after npm install we should see a bunch &#xa;of hooks populated in .git/hooks">
<node CREATED="1508581358932" ID="ID_1281420701" MODIFIED="1508581365213" TEXT="pre-commit"/>
<node CREATED="1508580993432" ID="ID_1117938431" MODIFIED="1508581001738" TEXT="commit-msg"/>
<node CREATED="1508581001990" ID="ID_266922513" MODIFIED="1508581011295" TEXT="post-checkout"/>
<node CREATED="1508581017331" ID="ID_1213232480" MODIFIED="1508581024664" TEXT="do not edit these files"/>
<node CREATED="1508581060088" ID="ID_848595080" MODIFIED="1508581872945" TEXT="These scritps are looking up in package.json what corresponding scripts to run (config.ghooks) and then run them"/>
</node>
</node>
<node CREATED="1508583213427" ID="ID_169569199" MODIFIED="1508583232828" TEXT="ghooks are now deprecated and husky is a replacement">
<node CREATED="1508583232828" ID="ID_116073712" MODIFIED="1508583258595" TEXT="the difference is that the hooks are defined in scripts rather than config.ghooks"/>
</node>
</node>
<node CREATED="1509539070518" ID="ID_1746957705" MODIFIED="1509539076274" TEXT="pre-commit">
<node CREATED="1509539076275" ID="ID_1098193685" MODIFIED="1509539087866" TEXT="npm i pre-commit --save dev"/>
<node CREATED="1509539088322" ID="ID_1682882661" MODIFIED="1509539094229" TEXT="package.json">
<node CREATED="1509539094230" ID="ID_1784090555" MODIFIED="1509539157635" TEXT="at root: &quot;pre-commit&quot;: [&quot;lint&quot;]">
<node CREATED="1509539112461" ID="ID_878963466" MODIFIED="1509539150186" TEXT="where eslint is a scripts.lint: &quot;eslint .&quot;"/>
</node>
</node>
</node>
</node>
<node CREATED="1508660436983" ID="ID_680450711" MODIFIED="1508660441523" POSITION="left" TEXT="Babel">
<node CREATED="1508661371866" ID="ID_1836192031" MODIFIED="1508661390065" TEXT="Presets are collections of plugins">
<node CREATED="1508661407628" ID="ID_911698652" MODIFIED="1508661436277" TEXT="By default Babel does nothing, we need to install plugins "/>
</node>
<node CREATED="1508661555223" ID="ID_1706886489" MODIFIED="1508661559220" TEXT="Configuration">
<node CREATED="1508661559221" ID="ID_1909377752" MODIFIED="1508661573814" TEXT="package.json devDependencies">
<node CREATED="1508661573816" ID="ID_598287537" MODIFIED="1508661597302" TEXT="&quot;babel-cli&quot;: &quot;6.11.4&quot;"/>
<node CREATED="1508661598226" ID="ID_1819940355" MODIFIED="1508661711713" TEXT="&quot;babel-preset-es2015&quot;: &quot;6.9.0&quot;"/>
</node>
<node CREATED="1508661740928" ID="ID_262359998" MODIFIED="1508661764262" TEXT="Configuration in package.json or .babelrc"/>
<node CREATED="1508661850340" ID="ID_1692577253" MODIFIED="1508661917322" TEXT="package.json conf in root">
<node CREATED="1508661858669" ID="ID_1551431924" MODIFIED="1508661871400" TEXT="&quot;babel&quot;: {}">
<node CREATED="1508661918455" ID="ID_1042293477" MODIFIED="1508661931776" TEXT="&quot;presets&quot;: []">
<node CREATED="1508661931777" ID="ID_1603166684" MODIFIED="1508661941152" TEXT="&quot;es2015&quot;"/>
</node>
<node CREATED="1508661964779" ID="ID_1355717522" MODIFIED="1508661975999" TEXT="&quot;plugins&quot;: []">
<node CREATED="1508661988356" ID="ID_1109806418" MODIFIED="1508661996745" TEXT="&quot;module-alias&quot;"/>
</node>
</node>
</node>
<node CREATED="1508662171371" ID="ID_781233635" MODIFIED="1508662180434" TEXT="package.json scripts">
<node CREATED="1508662180436" ID="ID_1686144850" MODIFIED="1508668254282" TEXT="&quot;build&quot;: &quot;babel --copy-files --out-dir dist --ignore *.test.js src&quot;">
<node CREATED="1508663662480" ID="ID_366354334" MODIFIED="1508663682148" TEXT="src is input dir, dist is output dir"/>
<node CREATED="1508666485353" ID="ID_1416766794" MODIFIED="1508666507623" TEXT="--ignore specifies what should be excluded during transpile process">
<node CREATED="1508666737618" ID="ID_1378245644" MODIFIED="1508666751022" TEXT="We don&apos;t want to distribute the test files for example"/>
<node CREATED="1508666836067" ID="ID_1812112241" MODIFIED="1508666873808" TEXT="Because what is in the dist folder is what we want to push to npm and nothing else that isn&apos;t needed"/>
</node>
<node CREATED="1508668261639" ID="ID_1037213184" MODIFIED="1508668285718" TEXT="--copy-files will include in the dist folder all files that aren&apos;t js and won&apos;t be compiled">
<node CREATED="1508668285719" ID="ID_1579179920" MODIFIED="1508668362296" TEXT="This could be some dependency that complied script need, like for example a json file"/>
</node>
</node>
</node>
<node CREATED="1508873495171" ID="ID_1147844534" MODIFIED="1508873509806" TEXT="Transpile files on the fly for nyc">
<node CREATED="1508875800340" ID="ID_1442463414" MODIFIED="1508876274413" TEXT="We don&apos;t want to run tests on the transpiled code">
<node CREATED="1508876018218" ID="ID_884984831" MODIFIED="1508876034319" TEXT="Transpiled code has some additional lines added by babel">
<node CREATED="1508876549613" ID="ID_1356085573" MODIFIED="1508876773119" TEXT="We don&apos;t care about the coverage on these extra lines"/>
</node>
<node CREATED="1508876078230" ID="ID_70355314" MODIFIED="1508876090407" TEXT="We need to transpile our test and source code on the fly"/>
<node CREATED="1508875515266" ID="ID_675519408" MODIFIED="1508876285130" TEXT="nyc doesn&apos;t understand ES6 so it needs to build a report on the transpiled code "/>
</node>
<node CREATED="1508873509807" ID="ID_665661721" MODIFIED="1508876313335" TEXT="package.json devDependencies">
<node CREATED="1508876315119" ID="ID_1477558920" MODIFIED="1508876328593" TEXT=" &quot;babel-register&quot;: &quot;6.11.6&quot; "/>
<node CREATED="1508876329149" ID="ID_766783166" MODIFIED="1508876331303" TEXT="babel-plugin-istanbul&quot;: &quot;1.0.3&quot;"/>
</node>
<node CREATED="1508874152959" ID="ID_1861978101" MODIFIED="1508874179170" TEXT="in package.json &quot;babel&quot;">
<node CREATED="1508874162655" ID="ID_1032216455" MODIFIED="1508874175922" TEXT="&quot;plugins&quot;: [&quot;istanbul&quot;]">
<node CREATED="1508874208716" ID="ID_1938863265" MODIFIED="1508874228986" TEXT="&quot;istanbul&quot; is short for &quot;babel-plugin-istanbul&quot;"/>
</node>
</node>
<node CREATED="1508873609760" ID="ID_761696848" MODIFIED="1508876351417" TEXT="in package.json &quot;nyc&quot;">
<node CREATED="1508873620642" ID="ID_1495367925" MODIFIED="1508873632507" TEXT="&quot;instrument&quot;: false"/>
<node CREATED="1508873646679" ID="ID_1707835578" MODIFIED="1508873656255" TEXT="&quot;sourceMap&quot;: false"/>
<node CREATED="1508873697357" ID="ID_490087293" MODIFIED="1508873935764" TEXT="&quot;require&quot;: [&quot;babel-register&quot;]">
<node CREATED="1508873935765" ID="ID_332016420" MODIFIED="1508873941430" TEXT="This will tell nyc &quot;hey, before you spawn off this mocha cli, I want you to require this thing and have it do something&quot;"/>
<node CREATED="1508873751713" ID="ID_393032860" MODIFIED="1508873809986" TEXT="babel register will hijack the require function and then anything that uses require will have that code transpiled on the fly"/>
</node>
</node>
<node CREATED="1508874395603" ID="ID_1057156509" MODIFIED="1508875260204" TEXT="When we run npm run build we will notice that index.js has the nyc code">
<node CREATED="1508874500729" ID="ID_1496920950" MODIFIED="1508875010927" TEXT="To fix this we want to differentiate our test env from normall"/>
<node CREATED="1508874928074" ID="ID_951162035" MODIFIED="1508874940319" TEXT="in package.json &quot;babel&quot;">
<node CREATED="1508874956509" ID="ID_158901552" MODIFIED="1508875001505" TEXT="env.test.plugins:[&quot;istanbul&quot;]">
<node CREATED="1508875121106" ID="ID_226308127" MODIFIED="1508875218160" TEXT="The &quot;test&quot; is what we should pass as env variable before we run the tests"/>
</node>
</node>
<node CREATED="1508875041909" ID="ID_1067158392" MODIFIED="1508875080470" TEXT="We tell babel to behave differently given a certain environment"/>
<node CREATED="1508875260808" ID="ID_1162619700" MODIFIED="1508875302742" TEXT="In package.json &quot;scripts&quot;">
<node CREATED="1508875273086" ID="ID_1577925573" MODIFIED="1508875294723" TEXT="&quot;test&quot;: &quot;NODE_ENV=test nyc mocha&quot;"/>
</node>
<node CREATED="1508875357498" ID="ID_1830648535" MODIFIED="1508875438898" TEXT="Now when we run &quot;npm run build&quot; we will not have nyc garbage and nyc will get transpiled code only when running &quot;npm t&quot;"/>
</node>
</node>
</node>
<node CREATED="1508666603599" ID="ID_957835356" MODIFIED="1508667159510" TEXT="pre-build wipe">
<node CREATED="1508666607756" ID="ID_1567131932" MODIFIED="1508666699461" TEXT="It is good to automatically wipe the dist folder before every rebuid"/>
<node CREATED="1508666902097" ID="ID_261036747" MODIFIED="1508666935535" TEXT="package.json scripts.prebuild can be used for that purpose">
<node CREATED="1508666935536" ID="ID_1308512235" MODIFIED="1508666969454" TEXT="We could just add &quot;rm -rf&quot; but this wouldn&apos;t work on Win"/>
</node>
<node CREATED="1508666971416" ID="ID_1861030133" MODIFIED="1508667016654" TEXT="we can use rimraf npm module for cross os compatibility">
<node CREATED="1508667033992" ID="ID_1958698991" MODIFIED="1508667050094" TEXT="&quot;prebuild&quot;: &quot;rimraf dist&quot;"/>
</node>
<node CREATED="1508667159511" ID="ID_251300136" MODIFIED="1508667235336" TEXT="any script in package.json that can have it&apos;s pre- version, so that when I call that script like npm run build for example, it will also run automatically prebuild"/>
</node>
</node>
<node CREATED="1508664579997" ID="ID_1681177563" MODIFIED="1508665143417" POSITION="right" TEXT="greenkeeper.io">
<node CREATED="1508664764497" ID="ID_1923916862" MODIFIED="1508664974293" TEXT="Plug it to github repo, it will scan all dependecies in package.json and then anytime any of them gets an update, we will receive a PR with that dependency updated. With TravisCI set up, it will run tests to check if they pass with versions updated and if so it will merge these PRs."/>
<node CREATED="1508665143418" ID="ID_581607642" MODIFIED="1508665163840" TEXT="Alternatively David can be used">
<node CREATED="1508665163841" ID="ID_1053563042" MODIFIED="1508665167513" TEXT="david update">
<node CREATED="1508665167514" ID="ID_1944653949" MODIFIED="1508665174941" TEXT="will update all dependencies"/>
</node>
</node>
</node>
<node CREATED="1508665720695" ID="ID_1524942644" MODIFIED="1508665726832" POSITION="left" TEXT="Treeshaking">
<node CREATED="1508665726833" ID="ID_1403385285" MODIFIED="1508665818343" TEXT="If you distribute a version of your library that uses ES6 modules, and then people consume that with something like Webpack, Rollup or Browserify, then they can pick and choose the pieces of the library that they are actually using, which can significantly reduce file size. (important for browsers mostly)"/>
</node>
<node CREATED="1508788853567" ID="ID_320334948" MODIFIED="1508788856034" POSITION="right" TEXT="git">
<node CREATED="1508788856035" ID="ID_621906661" MODIFIED="1508788857648" TEXT="tips">
<node CREATED="1508788857651" ID="ID_279331465" MODIFIED="1508788906563" TEXT="git diff name_of_other_branch">
<node CREATED="1508788962743" ID="ID_200985608" MODIFIED="1508788977099" TEXT="Use diff-so-fancy to get nice color output"/>
</node>
<node CREATED="1508791765213" ID="ID_1251235481" MODIFIED="1508791768940" TEXT=".gitignore">
<node CREATED="1508791768940" ID="ID_493576662" MODIFIED="1508791833961" TEXT="Remember to add /dist folder as we don&apos;t want to keep compiled files in the source repo (we can keep them in another branch named latest for example)"/>
</node>
</node>
</node>
<node CREATED="1508877165466" ID="ID_448270424" MODIFIED="1508877172867" POSITION="left" TEXT="Webpack">
<node CREATED="1508878256358" ID="ID_198222282" MODIFIED="1508878287865" TEXT="Browsers don&apos;t understand the commonjs modules (require) and webpack solves that problem"/>
<node CREATED="1508878292929" ID="ID_1935502589" MODIFIED="1508878487169" TEXT="People who are consuming our library and using the bundler won&apos;t need this. But it is not good for the library authour to ask people to use a specific budler like Webpack in order to be able to use the lib."/>
</node>
<node CREATED="1509044664230" ID="ID_187640552" MODIFIED="1509044676960" POSITION="right" TEXT="CI">
<node CREATED="1509044679009" ID="ID_194159626" MODIFIED="1509044682885" TEXT="Travis">
<node CREATED="1509044784103" ID="ID_754225412" MODIFIED="1509044788221" TEXT="Setup">
<node CREATED="1509044788223" ID="ID_690520671" MODIFIED="1509045379439" TEXT="SignIn with GitHub and sync repos"/>
<node CREATED="1509045444997" ID="ID_688187394" MODIFIED="1509045529521" TEXT="Turn on the repo and in settings set to build only if travis.yml is present"/>
<node CREATED="1509045705592" ID="ID_940638158" MODIFIED="1509045947852" TEXT=".travis.yml in the project root">
<node CREATED="1509045717494" ID="ID_1431569543" MODIFIED="1509045759662" TEXT="language: node_js"/>
<node CREATED="1509045843335" ID="ID_905390042" MODIFIED="1509045863644" TEXT="cache.directories. - node_modules">
<node CREATED="1509045863646" ID="ID_618032552" MODIFIED="1509045887795" TEXT="since they don&apos;t change that often travis will cache them to speed up the build"/>
<node CREATED="1509048560304" ID="ID_1137607312" MODIFIED="1509048609829" TEXT="when run 2nd time it should be quicker as it won&apos;t install node_modules"/>
</node>
<node CREATED="1509045916016" ID="ID_1994027992" MODIFIED="1509045923582" TEXT="node_js: 6">
<node CREATED="1509045966851" ID="ID_1566230878" MODIFIED="1509045973976" TEXT="build this on node 6"/>
</node>
<node CREATED="1509045947853" ID="ID_1396131028" MODIFIED="1509045965351" TEXT="branches.only: -master"/>
<node CREATED="1509046009511" ID="ID_1831151565" MODIFIED="1509046022935" TEXT="notofications:.email: false"/>
<node CREATED="1509046023262" ID="ID_1974310503" MODIFIED="1509046032678" TEXT="script: - npm run validate">
<node CREATED="1509046105833" ID="ID_552822166" MODIFIED="1509046113566" TEXT="which is test lint build"/>
</node>
</node>
</node>
<node CREATED="1509047970709" ID="ID_1496195871" MODIFIED="1509048027378" TEXT="quick access">
<node CREATED="1509047972537" ID="ID_1085069705" MODIFIED="1509048019691" TEXT="travis-ci.org/githubname/reponame"/>
</node>
</node>
<node CREATED="1509047146792" ID="ID_852624350" MODIFIED="1509047149940" TEXT="Codecov">
<node CREATED="1509047667181" ID="ID_1450090044" MODIFIED="1509047676771" TEXT="Register first">
<node CREATED="1509049641389" ID="ID_530903538" MODIFIED="1509049658764" TEXT="When Codecov is used with Travis then there is no need for tokens">
<node CREATED="1509049684688" ID="ID_1750988609" MODIFIED="1509049830362" TEXT="When used locally, then in order to submit, authentication is required"/>
</node>
</node>
<node CREATED="1509047149941" ID="ID_1071669436" MODIFIED="1509047272180" TEXT="package.json">
<node CREATED="1509047273408" ID="ID_1040090800" MODIFIED="1509047280959" TEXT="devDeps">
<node CREATED="1509047182664" ID="ID_1338045188" MODIFIED="1509047285628" TEXT="&quot;codecov&quot;: &quot;1.0.1&quot;"/>
</node>
<node CREATED="1509047295329" ID="ID_562542239" MODIFIED="1509047299983" TEXT="scripts">
<node CREATED="1509047299985" ID="ID_1306309935" MODIFIED="1509047336954" TEXT="&quot;report-coverage&quot;: &quot;cat ./coverage/lcov.info | codecov&quot;">
<node CREATED="1509047328226" ID="ID_791980393" MODIFIED="1509047355867" TEXT="lcov.info is the file generated by nyc"/>
</node>
</node>
</node>
<node CREATED="1509047680020" ID="ID_1799182502" MODIFIED="1509047688533" TEXT=".travis.yml">
<node CREATED="1509047688534" ID="ID_876364128" MODIFIED="1509047695780" TEXT="after_success:">
<node CREATED="1509047695781" ID="ID_1488675870" MODIFIED="1509047706075" TEXT="- npm run report-coverage"/>
</node>
</node>
<node CREATED="1509048811457" ID="ID_64403630" MODIFIED="1509048819573" TEXT="quick access">
<node CREATED="1509048819574" ID="ID_62436515" MODIFIED="1509049292450" TEXT="codecov.io/github/github-name/reponame"/>
</node>
</node>
<node CREATED="1509050168097" ID="ID_624104373" MODIFIED="1509050193898" TEXT="Get a badge from shields.io">
<node CREATED="1509050308371" ID="ID_1109120223" MODIFIED="1509050326399" TEXT="They demonstrate commitment level to the project"/>
<node CREATED="1509050172135" ID="ID_1675289030" MODIFIED="1509050198359" TEXT="Travis">
<node CREATED="1509050244977" ID="ID_554408951" MODIFIED="1509050263055" TEXT="img.shields.io/travis/githubname/reponame"/>
</node>
<node CREATED="1509050198730" ID="ID_835643155" MODIFIED="1509050201434" TEXT="Codecov">
<node CREATED="1509050201435" ID="ID_735625035" MODIFIED="1509050230388" TEXT="img.shields.io/codecov/c/github/githubname/reponame"/>
</node>
</node>
</node>
<node CREATED="1509356891414" ID="ID_927305252" MODIFIED="1509356912370" POSITION="left" TEXT="Semantic release">
<node CREATED="1509356912372" ID="ID_878781908" MODIFIED="1509357826972" TEXT="Semantic-release-cli">
<node CREATED="1509357806434" ID="ID_1302442852" MODIFIED="1509357843501" TEXT="Description">
<node CREATED="1509357030983" ID="ID_1985744324" MODIFIED="1509357157144" TEXT="It will hook into Travis to run release script after build is successfulll"/>
<node CREATED="1509357150844" ID="ID_580642213" MODIFIED="1509357209685" TEXT="As part of release script it will set version number in package.json">
<node CREATED="1509357209963" ID="ID_473628515" MODIFIED="1509357477615" TEXT="Based off of our commit msgs, git tags and the current version on github">
<node CREATED="1509357535612" ID="ID_1248004449" MODIFIED="1509357642785" TEXT="&quot;git push --tags&quot; to push tags that have been created by npm version"/>
</node>
</node>
<node CREATED="1509357255727" ID="ID_1624457033" MODIFIED="1509357298604" TEXT="Will update the GitHub Releases page with a release that represents all the changes that we&apos;ve made">
<node CREATED="1509357706729" ID="ID_910001408" MODIFIED="1509357724145" TEXT="Based on commits that have been done since the last version (based on tags)"/>
</node>
</node>
<node CREATED="1509357859227" ID="ID_1001455195" MODIFIED="1509357862699" TEXT="Installation">
<node CREATED="1509357862700" ID="ID_211961760" MODIFIED="1509357877198" TEXT="npm i semantic-release-cli -g">
<node CREATED="1509357877199" ID="ID_154483579" MODIFIED="1509357882508" TEXT="install globally"/>
</node>
<node CREATED="1509357905029" ID="ID_2105958" MODIFIED="1509358008178" TEXT="semantic-release-cli setup">
<node CREATED="1509357983233" ID="ID_1500407510" MODIFIED="1509358007314" TEXT="it will ask about github and npm username"/>
<node CREATED="1509358008178" ID="ID_802022591" MODIFIED="1509358079674" TEXT="it will generate tokens for github and npm and will use those to add to Travis build automatically so that it could do the releasing and the GitHub changelog generation for us"/>
<node CREATED="1509358320326" ID="ID_622891889" MODIFIED="1509358359713" TEXT="it will change a lot of things in travis.yaml that can be actually reverted"/>
<node CREATED="1509358467447" ID="ID_520249295" MODIFIED="1509358471464" TEXT="in package.json">
<node CREATED="1509358471465" ID="ID_667110665" MODIFIED="1509361707761" TEXT="removes version (is not needed as it will be managed automatically)">
<node CREATED="1509361709460" ID="ID_43757162" MODIFIED="1509361745437" TEXT="good practice - put something like &quot;version&quot;: &quot;0.0.0-semantically releases&quot;">
<node CREATED="1509361750002" ID="ID_1232779959" MODIFIED="1509361763205" TEXT="to give indication to people as to what may be going on"/>
</node>
</node>
<node CREATED="1509358475714" ID="ID_310387278" MODIFIED="1509359954267" TEXT="adds to script.semantic-release: &quot;semtantic-release pre &amp;&amp; npm publish &amp;&amp; semantic-release post&quot;">
<node CREATED="1509358724999" ID="ID_77864649" MODIFIED="1509359885489" TEXT="pre is going to find the most recent version on GitHub and then it is going to  go to the current master version or the repo that it&apos;s building and it&apos;s going to find the difference  between those two, all of the commits between the most recently released version and the version that its looking at right now - and it will add it to package.json">
<node CREATED="1509359465984" ID="ID_1073971489" MODIFIED="1509359491363" TEXT="based on the commit messages it is going to determine what the new version is going to be"/>
<node CREATED="1509359729313" ID="ID_628029469" MODIFIED="1509359740339" TEXT="if you have fix then it is going to be a patch"/>
<node CREATED="1509359741321" ID="ID_1481261001" MODIFIED="1509359754245" TEXT="if you have feat it is going to be minor"/>
<node CREATED="1509359765842" ID="ID_357962897" MODIFIED="1509359789063" TEXT="if words BREAKING CHANGE are included in the commit, it is going to be major"/>
</node>
<node CREATED="1509359914142" ID="ID_545211763" MODIFIED="1509359925177" TEXT="then it will npm publish because it has a token"/>
<node CREATED="1509359954267" ID="ID_1507497125" MODIFIED="1509360008734" TEXT="post will make a git tag, push it to GitHub, then interact with GH API to create a release for that tag and have the changelog mede for us based off our commit messages"/>
</node>
</node>
<node CREATED="1509361848335" ID="ID_1569914474" MODIFIED="1509361854326" TEXT=".travis.yaml">
<node CREATED="1509361854327" ID="ID_1357241817" MODIFIED="1509361864931" TEXT="after_success: - npm run release"/>
</node>
</node>
</node>
</node>
<node CREATED="1509362044085" ID="ID_463777502" MODIFIED="1509362062845" TEXT="Git commit messages">
<node CREATED="1509273353722" ID="ID_290473227" MODIFIED="1509362067305" TEXT="Helps in automatically building changelog with git commit messages"/>
<node CREATED="1509273390816" ID="ID_265934264" MODIFIED="1509277628038" TEXT="git message: &quot;fix(methodname): commit msg that will appear in changelog&quot;">
<node CREATED="1509273589670" ID="ID_816813527" MODIFIED="1509444338914" TEXT="&lt;change_type&gt;(&lt;change_scope&gt;): &lt;change_subject&gt;">
<node CREATED="1509277326358" ID="ID_343015190" MODIFIED="1509277332618" TEXT="types">
<node CREATED="1509277329129" ID="ID_1894731089" MODIFIED="1509277332340" TEXT="fix"/>
<node CREATED="1509277332619" ID="ID_1011399829" MODIFIED="1509277334698" TEXT="feat"/>
<node CREATED="1509277334855" ID="ID_1525559908" MODIFIED="1509277339356" TEXT="perf"/>
<node CREATED="1509277354185" ID="ID_472786818" MODIFIED="1509277367130" TEXT="docs, chore, style, refactor, test"/>
</node>
<node CREATED="1509277421289" ID="ID_94197643" MODIFIED="1509277432395" TEXT="scope">
<node CREATED="1509277432396" ID="ID_261572913" MODIFIED="1509277446642" TEXT="method or module that changed"/>
</node>
<node CREATED="1509277447627" ID="ID_1196936853" MODIFIED="1509277559208" TEXT="subject">
<node CREATED="1509277450074" ID="ID_428153360" MODIFIED="1509277465890" TEXT="imperative, present tense">
<node CREATED="1509277465891" ID="ID_915399764" MODIFIED="1509277477972" TEXT="add/change.."/>
</node>
<node CREATED="1509277485997" ID="ID_1397511449" MODIFIED="1509277499765" TEXT="do not capitalize first letter"/>
<node CREATED="1509277500660" ID="ID_548017626" MODIFIED="1509277508880" TEXT="no dot at the end"/>
<node CREATED="1509277559941" ID="ID_1173603701" MODIFIED="1509277578298" TEXT="if this change is applied then that will ..."/>
</node>
</node>
<node CREATED="1509277628564" ID="ID_177066618" MODIFIED="1509277757165" TEXT="&lt;blank line&gt;body&lt;blank line&gt;footer">
<node CREATED="1509277643502" ID="ID_1602257462" MODIFIED="1509277676943" TEXT="body describes motivation"/>
<node CREATED="1509277757166" ID="ID_1568094894" MODIFIED="1509277765416" TEXT="footer describes breaking changes">
<node CREATED="1509277777716" ID="ID_1897236641" MODIFIED="1509277796960" TEXT="or if a commit closes github issue then specify that issue number"/>
</node>
</node>
<node CREATED="1509362102510" ID="ID_843885888" MODIFIED="1509362138150" TEXT="examples">
<node CREATED="1509362138640" ID="ID_452106813" MODIFIED="1509362141910" TEXT="feat(pencil): add &apos;graphiteWidth&apos; option"/>
<node CREATED="1509362146721" ID="ID_37552943" MODIFIED="1509362182465" TEXT="fix(graphite): stop graphite breaking when width &lt; 0.1&#xa;&#xa;Closes #28"/>
<node CREATED="1509362184649" ID="ID_1654296011" MODIFIED="1509362242116" TEXT="per(pencil): remove graphiteWidth option&#xa;&#xa;BREAKING CHANGE: The grahpiteWidth option has been removed."/>
</node>
</node>
</node>
<node CREATED="1509363055296" ID="ID_1376174657" MODIFIED="1509363059367" TEXT="commitizen">
<node CREATED="1509363062599" ID="ID_303791581" MODIFIED="1509363268211" TEXT="install (dev dep)">
<node CREATED="1509363099279" ID="ID_1090525901" MODIFIED="1509363104382" TEXT="commitizen">
<node CREATED="1509363706888" ID="ID_1667674816" MODIFIED="1509363725938" TEXT="package.json: scripts.commit: &quot;git-cz&quot;"/>
<node CREATED="1509363754152" ID="ID_92952066" MODIFIED="1509363764431" TEXT="we run it: npm run commit"/>
<node CREATED="1509363811249" ID="ID_676463479" MODIFIED="1509363883874" TEXT="it will print a prompt asking what kind of commit it is (feat, fix, docs, chore)..."/>
</node>
<node CREATED="1509363104730" ID="ID_380032105" MODIFIED="1509363135751" TEXT="cz-conventional-changelog">
<node CREATED="1509363137322" ID="ID_1795096523" MODIFIED="1509363154338" TEXT="plugin to tell commitizen what questions to ask"/>
<node CREATED="1509363608498" ID="ID_1942190563" MODIFIED="1509363637675" TEXT="package.json: config.commitizen:path: &quot;cz-conventional-changelog&quot;&quot;"/>
</node>
<node CREATED="1509363155713" ID="ID_691367575" MODIFIED="1509363161217" TEXT="validate-commit-msg">
<node CREATED="1509363275412" ID="ID_1316212992" MODIFIED="1509363373601" TEXT="package.json: config.githooks.&quot;commit-msg&quot;: &quot;validate-commit-msg&quot;&quot;"/>
<node CREATED="1509363420449" ID="ID_1881426702" MODIFIED="1509363460151" TEXT="now if we tried to commit with a msg that doesn&apos;t follow the standard it will generate error and prevent from commiting"/>
</node>
</node>
</node>
<node CREATED="1509365851990" ID="ID_1348138866" MODIFIED="1509366672911" TEXT="good practices">
<node CREATED="1509365856081" ID="ID_715091038" MODIFIED="1509365879653" TEXT="you want to release a new version for every commit because why not to"/>
<node CREATED="1509365879786" ID="ID_50959958" MODIFIED="1509365917801" TEXT="you don&apos;t want to release breaking changes to often because people will struggle with catching up">
<node CREATED="1509365917802" ID="ID_1045666959" MODIFIED="1509365942097" TEXT="Instead, create a brach called &apos;next&apos; or &apos;beta&apos; and all pull request would go to that"/>
<node CREATED="1509365946627" ID="ID_1033015331" MODIFIED="1509365998257" TEXT="next once there is enough breaking changes, merge that branch with master as pull request"/>
</node>
<node CREATED="1509366789389" ID="ID_927424845" MODIFIED="1509366815046" TEXT="have a goal/definition of done - and roadmap">
<node CREATED="1509366815047" ID="ID_1016267435" MODIFIED="1509366827003" TEXT="redux is done">
<node CREATED="1509366827004" ID="ID_1721598983" MODIFIED="1509366843158" TEXT="if anyone needs a feature, they don&apos;t need to ask authour about it">
<node CREATED="1509366843158" ID="ID_905366923" MODIFIED="1509367415977" TEXT="new features can be added as a middleware or plugins">
<node CREATED="1509367417266" ID="ID_1902735866" MODIFIED="1509367503585" TEXT="Youtu.be/FlcB8T0miO8"/>
</node>
</node>
<node CREATED="1509366944826" ID="ID_515372239" MODIFIED="1509366959368" TEXT="That way you can keep your library small and maintained much more easily and still cover the use cases that other people are looking for"/>
</node>
</node>
</node>
</node>
</node>
</map>
