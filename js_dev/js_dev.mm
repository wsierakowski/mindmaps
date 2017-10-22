<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1508441258413" ID="ID_681257263" MODIFIED="1508441468575" TEXT="JS Project">
<node CREATED="1508441364048" ID="ID_1789174684" MODIFIED="1508441383525" POSITION="right" TEXT="Text files">
<node CREATED="1508441417319" ID="ID_548654128" MODIFIED="1508441422448" TEXT="License"/>
<node CREATED="1508441423534" ID="ID_413675911" MODIFIED="1508441429124" TEXT="Code of conduct"/>
<node CREATED="1508441430238" ID="ID_522541417" MODIFIED="1508441433571" TEXT="Readme"/>
</node>
<node CREATED="1508441469746" ID="ID_378442697" MODIFIED="1508441475862" POSITION="left" TEXT="NPM">
<node CREATED="1508445656055" ID="ID_1372719283" MODIFIED="1508445834618" TEXT="NPM allows library users to configure dependecies (that support that) to put their settings to the config property. This means that the settings shouldn&apos;t be in the root of the package.json. This way if NPM decides to put a property with the same name as the name of the library, there won&apos;t be any conflict.">
<node CREATED="1508445847471" ID="ID_996446834" MODIFIED="1508445896369" TEXT="&quot;config&quot;: {&#xa;   &quot;yourlib&quot;: {}&#xa;}"/>
</node>
</node>
<node CREATED="1508441480456" ID="ID_1759992579" MODIFIED="1508441486801" POSITION="right" TEXT="ESLint"/>
<node CREATED="1508441488887" ID="ID_575130199" MODIFIED="1508441689332" POSITION="left" TEXT="Tests">
<node CREATED="1508441689333" ID="ID_652506921" MODIFIED="1508441695636" TEXT="Test Runners">
<node CREATED="1508441495016" ID="ID_687243647" MODIFIED="1508441497755" TEXT="Mocha"/>
</node>
<node CREATED="1508441696873" ID="ID_33736853" MODIFIED="1508441700047" TEXT="Assertions">
<node CREATED="1508441498865" ID="ID_229207052" MODIFIED="1508441710605" TEXT="Chai"/>
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
<node CREATED="1508662180436" ID="ID_1686144850" MODIFIED="1508663660755" TEXT="&quot;build&quot;: &quot;babel --out-dir dist src&quot;">
<node CREATED="1508663662480" ID="ID_366354334" MODIFIED="1508663682148" TEXT="src is input dir, dist is output dir"/>
</node>
</node>
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
</node>
</map>
