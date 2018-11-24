<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1509440345885" ID="ID_1307117310" MODIFIED="1509440446266" TEXT="git">
<node CREATED="1509440450634" ID="ID_988995685" MODIFIED="1509440494013" POSITION="right" TEXT="Gihub contributions">
<node CREATED="1509705525783" ID="ID_430625260" MODIFIED="1509705541305" TEXT="Check contribution file (or section in readme)">
<node CREATED="1509705798908" ID="ID_337203295" MODIFIED="1509705833837" TEXT="Discuss the proposed fix with the maintainer before - so that the work will not be waste"/>
</node>
<node CREATED="1509440494014" ID="ID_815202604" MODIFIED="1509440623708" TEXT="After forking and cloning">
<node CREATED="1509440623709" ID="ID_321497151" MODIFIED="1509440779863" TEXT="To keep track of the original master">
<node CREATED="1509440684269" ID="ID_1253461869" MODIFIED="1509440737497" TEXT="git remote add upstream git@github.com:eggheadio-github/stack-overflow-copy-paste.git"/>
<node CREATED="1509440779864" ID="ID_1297249493" MODIFIED="1509440784901" TEXT="git fetch upstream">
<node CREATED="1509440784901" ID="ID_101192408" MODIFIED="1509440862365" TEXT="to let local repo get info about remote repo"/>
<node CREATED="1509440890945" ID="ID_1729270304" MODIFIED="1509440908736" TEXT="returns: * [new branch]   master   -&gt; upstream/master"/>
<node CREATED="1509440918821" ID="ID_1487325273" MODIFIED="1509440941667" TEXT="Right now our local copy of the master branch is pointing to our personal remote repository"/>
</node>
<node CREATED="1509441007282" ID="ID_269206606" MODIFIED="1509441023611" TEXT="git branch --set-upstream-to=upstream/master master">
<node CREATED="1509440971428" ID="ID_216863553" MODIFIED="1509707447548" TEXT="Our repository is called origin, we want our local copy of master to point to upstream rather than origin, so whenever we pull changes into master it will get the latest changes from the upstream repository."/>
<node CREATED="1509441076199" ID="ID_1140986031" MODIFIED="1509441078057" TEXT="Now our branch, called master, is tracking the upstream master. When there are updates we like to get from the upstream repository we can get them by simply pulling on that branch."/>
<node CREATED="1509707607993" ID="ID_1522642272" MODIFIED="1509707614420" TEXT="Output: Branch master set up to track remote branch master from upstream."/>
</node>
</node>
<node CREATED="1509791208638" ID="ID_180523807" MODIFIED="1509791221371" TEXT="Create a branch locally">
<node CREATED="1509791292277" ID="ID_1824669980" MODIFIED="1509791346362" TEXT="git checkout -b &apos;pr/branch-name&apos;"/>
</node>
<node CREATED="1509442542138" ID="ID_939896522" MODIFIED="1509442552682" TEXT="Pushing local changes to do PR">
<node CREATED="1509442552684" ID="ID_1312389552" MODIFIED="1509442562322" TEXT="git push origin pr/padLeft">
<node CREATED="1509442571453" ID="ID_97319811" MODIFIED="1509442587585" TEXT="pushing to fork  repo branch"/>
</node>
<node CREATED="1509442674110" ID="ID_1937970770" MODIFIED="1509442714193" TEXT="git push --set-upstream origin pr/padLeft">
<node CREATED="1509442714194" ID="ID_1521217287" MODIFIED="1509442763566" TEXT="this sets that remote for that branch so that next time we can only type git push o"/>
<node CREATED="1509442763729" ID="ID_1331560509" MODIFIED="1509442777269" TEXT="--set-upstream can be replaced with -u"/>
</node>
</node>
</node>
</node>
<node CREATED="1509454650623" ID="ID_460108956" MODIFIED="1509454661712" POSITION="left" TEXT="checkout">
<node CREATED="1509454663095" ID="ID_99852144" MODIFIED="1509454675901" TEXT="replace the current files with what&apos;s in the repo">
<node CREATED="1509454675901" ID="ID_688997694" MODIFIED="1509454692475" TEXT="git checkout -f branchname"/>
</node>
</node>
<node CREATED="1509441140556" ID="ID_1415114383" MODIFIED="1509441143754" POSITION="left" TEXT="branches">
<node CREATED="1509441143755" ID="ID_401277636" MODIFIED="1509441151007" TEXT="create and go to a new branch">
<node CREATED="1509441151008" ID="ID_1947538204" MODIFIED="1509441168941" TEXT="git checkout -b pr/padleft">
<node CREATED="1509441198137" ID="ID_1993552269" MODIFIED="1509441204965" TEXT="pr is a prefix"/>
</node>
</node>
</node>
<node CREATED="1509444643150" ID="ID_1290613744" MODIFIED="1509444647687" POSITION="left" TEXT="rebase">
<node CREATED="1509444648682" ID="ID_845635505" MODIFIED="1509444665212" TEXT="Use when we want to merge changes from master to our local branch">
<node CREATED="1509444665213" ID="ID_722049955" MODIFIED="1509444726664" TEXT="better than merge as it will keep git history a little nicer"/>
<node CREATED="1509445268802" ID="ID_724516929" MODIFIED="1509445321575" TEXT="We apply commits from master first and then our commits on top of that, even if commits from master happened after our local commits"/>
</node>
<node CREATED="1509445024095" ID="ID_1975738895" MODIFIED="1509445025976" TEXT="steps">
<node CREATED="1509445025977" ID="ID_44687609" MODIFIED="1509445045856" TEXT="1. fetch master to local">
<node CREATED="1509445045857" ID="ID_469897426" MODIFIED="1509445052695" TEXT="git fetch upstream"/>
</node>
<node CREATED="1509445362330" ID="ID_458130080" MODIFIED="1509445366866" TEXT="2. rebase">
<node CREATED="1509445366867" ID="ID_1226739306" MODIFIED="1509445376687" TEXT="git rebase upstream/master"/>
</node>
<node CREATED="1509445609413" ID="ID_701388938" MODIFIED="1510485027335" TEXT="3. in case of conflicts">
<node CREATED="1509445616572" ID="ID_737029453" MODIFIED="1509445623699" TEXT="fix conflict"/>
<node CREATED="1510485029069" ID="ID_594867625" MODIFIED="1510485039380" TEXT="check conflicts with git diff"/>
</node>
<node CREATED="1509445624598" ID="ID_1782201039" MODIFIED="1509446743281" TEXT="3.1 and then continue rebase">
<node CREATED="1509445633241" ID="ID_1385094060" MODIFIED="1509445640607" TEXT="git rebase --continue"/>
</node>
<node CREATED="1509445659877" ID="ID_1590417768" MODIFIED="1509446750102" TEXT="3.2 or abort if got into troubles">
<node CREATED="1509445669611" ID="ID_809250063" MODIFIED="1509445684486" TEXT="git rebase --abort"/>
</node>
<node CREATED="1509445721284" ID="ID_223154618" MODIFIED="1509446022273" TEXT="4. push changes to remote (branch)">
<node CREATED="1509445744719" ID="ID_899851307" MODIFIED="1509445879460" TEXT="This operation changes git history so if we try git push we will find that git will reject it"/>
<node CREATED="1509445758861" ID="ID_797266284" MODIFIED="1509445898594" TEXT="git push -f"/>
<node CREATED="1509446022770" ID="ID_1231960698" MODIFIED="1509446051334" TEXT="This is distructive operation, check with git log that everything is ok to avoid loosing changes in your branch"/>
</node>
</node>
</node>
<node CREATED="1509446345881" ID="ID_232891363" MODIFIED="1509446354997" POSITION="left" TEXT="squash commits">
<node CREATED="1509446358300" ID="ID_1885480831" MODIFIED="1509446379614" TEXT="Handy with pull requests to avoid clutter with too many commits"/>
<node CREATED="1509446419396" ID="ID_1881676457" MODIFIED="1509446913324" TEXT="steps">
<node CREATED="1509446421926" ID="ID_38272135" MODIFIED="1509446470742" TEXT="1. Provide the parent commit for the oldest commit we want to squash">
<node CREATED="1509446518427" ID="ID_1868805772" MODIFIED="1509446537850" TEXT="Use git log to find the sha of the oldest commit&apos;s parent"/>
</node>
<node CREATED="1509446555857" ID="ID_1526208132" MODIFIED="1509446564767" TEXT="2. Start interactive rebase session">
<node CREATED="1509446564768" ID="ID_942511131" MODIFIED="1509446588753" TEXT="git rebase -i sha_of_parent_commit"/>
</node>
<node CREATED="1509446632168" ID="ID_790682654" MODIFIED="1509446645044" TEXT="3. define commands for each commit">
<node CREATED="1509446645045" ID="ID_1033560237" MODIFIED="1509446655774" TEXT="commits are listed from top to bottom">
<node CREATED="1509446655774" ID="ID_1243291005" MODIFIED="1509446668996" TEXT="skipping a line removes a commit from rebase"/>
</node>
</node>
<node CREATED="1509446712999" ID="ID_752859008" MODIFIED="1509446723228" TEXT="3.1 we actually want to merge two commits">
<node CREATED="1509446758186" ID="ID_971550786" MODIFIED="1509446768123" TEXT="top command will be &quot;pick&quot;"/>
<node CREATED="1509446768457" ID="ID_1503224380" MODIFIED="1509446780214" TEXT="bottom command should be &quot;squash&quot;"/>
</node>
<node CREATED="1509446812218" ID="ID_644570669" MODIFIED="1509446857843" TEXT="4. When git finishes processing it will ask for a new message "/>
<node CREATED="1509446885022" ID="ID_29277881" MODIFIED="1509446903311" TEXT="5. with git log check that multiple commits are replaced with a single one"/>
<node CREATED="1509446913798" ID="ID_1287847017" MODIFIED="1509446935262" TEXT="6. force push (as with *rebase above)"/>
</node>
</node>
<node CREATED="1509442463123" ID="ID_1061107900" MODIFIED="1509442467097" POSITION="left" TEXT="githooks">
<node CREATED="1509442467098" ID="ID_334484885" MODIFIED="1509442484286" TEXT="skipping githooks with any command">
<node CREATED="1509442484287" ID="ID_1714940859" MODIFIED="1509442494216" TEXT="--no-verify"/>
</node>
</node>
<node CREATED="1509655229562" ID="ID_1671328678" MODIFIED="1509655252282" POSITION="right" TEXT="git config">
<node CREATED="1509655234113" ID="ID_573464012" MODIFIED="1509655237289" TEXT="--global">
<node CREATED="1509655237290" ID="ID_868739139" MODIFIED="1509655247539" TEXT="can be global or local setting"/>
</node>
<node CREATED="1509655255467" ID="ID_364176991" MODIFIED="1509655262626" TEXT="user">
<node CREATED="1509655262628" ID="ID_1371694495" MODIFIED="1509655264732" TEXT="name"/>
<node CREATED="1509655265429" ID="ID_947596495" MODIFIED="1509655274229" TEXT="email"/>
</node>
<node CREATED="1511900979137" ID="ID_1445065121" MODIFIED="1511900993281" TEXT="~/.gitconfig">
<node CREATED="1511900993282" ID="ID_1354455958" MODIFIED="1511901041587" TEXT="[user]&#xa;  name = First Last&#xa;  email = fl@co.com"/>
</node>
</node>
<node CREATED="1509655485599" ID="ID_1875537781" MODIFIED="1509655496294" POSITION="right" TEXT="ssh">
<node CREATED="1509655519062" ID="ID_283443843" MODIFIED="1509706527832" TEXT="1. Generate key pair">
<node CREATED="1509655529023" ID="ID_28911460" MODIFIED="1509655573254" TEXT="ssh-keygen -t rsa -b 4096 -C name@domain.tld">
<node CREATED="1509655597830" ID="ID_544232414" MODIFIED="1509655611419" TEXT="will generate in ~/.ssh">
<node CREATED="1509655611420" ID="ID_1309782918" MODIFIED="1509655615074" TEXT="id_rsa">
<node CREATED="1509655615075" ID="ID_1548374520" MODIFIED="1509655621106" TEXT="private key"/>
</node>
<node CREATED="1509655628623" ID="ID_858930035" MODIFIED="1509655635587" TEXT="id_rsa.pub"/>
</node>
</node>
</node>
<node CREATED="1509655805865" ID="ID_730767298" MODIFIED="1509706536060" TEXT="2. Add ssh key to the ssh agent program">
<node CREATED="1509656050712" ID="ID_1934364441" MODIFIED="1509656074527" TEXT="Start ssh-agent in the background">
<node CREATED="1509656026613" ID="ID_1848227671" MODIFIED="1509656173885" TEXT="$ eval &quot;$(ssh-agent -s)&quot;"/>
</node>
<node CREATED="1509656085698" ID="ID_1373693963" MODIFIED="1509700379620" TEXT="Add private key to ssh-agent and store passphrase in the keychain">
<node CREATED="1509656128764" ID="ID_1547149962" MODIFIED="1509659973563" TEXT="$ ssh-add ~/.ssh/id_rsa">
<node CREATED="1509700060409" ID="ID_653392507" MODIFIED="1509700065985" TEXT="List existing keys">
<node CREATED="1509700065987" ID="ID_1861442608" MODIFIED="1509700078337" TEXT="$ ssh-add -l">
<node CREATED="1509700080519" ID="ID_1578594904" MODIFIED="1509700097406" TEXT="$ ssh-add -L to list full keys"/>
</node>
</node>
</node>
</node>
<node CREATED="1509698014324" ID="ID_888416473" MODIFIED="1509698030188" TEXT="For multiple keys">
<node CREATED="1509698291747" ID="ID_1314190402" MODIFIED="1509698311475" TEXT="in ~/.ssh/config file">
<node CREATED="1509698311477" ID="ID_933844630" MODIFIED="1509706490947" TEXT="Host hmh.github.com&#xa;  HostName github.com&#xa;  PreferredAuthentications publickey&#xa;  IdentityFile ~/.ssh/id_rsa_secondary&#xa;&#xa;Host bitbucket.org&#xa;  HostName bitbucket.org&#xa;  IdentityFile ~/.ssh/id_rsa">
<node CREATED="1509698636029" ID="ID_981311914" MODIFIED="1509698639535" TEXT="By defining each account with a different Host value, you can specify which git URLs use which SSH key."/>
</node>
</node>
</node>
<node CREATED="1509700760028" ID="ID_1060160059" MODIFIED="1509700763660" TEXT="Testing">
<node CREATED="1509700763662" ID="ID_1179619378" MODIFIED="1509700783453" TEXT="$ ssh -T git@github.com"/>
</node>
</node>
<node CREATED="1509656189504" ID="ID_207489059" MODIFIED="1509706541840" TEXT="3. Add public ssh key to GH/Bitbucket account"/>
<node CREATED="1509656953167" ID="ID_541991359" MODIFIED="1509706590633" TEXT="4. Set new origin remote url">
<node CREATED="1509656971972" ID="ID_1801635720" MODIFIED="1509706604556" TEXT="From: https://github.com/&lt;username&gt;/&lt;project&gt;.git"/>
<node CREATED="1509656992554" ID="ID_430640052" MODIFIED="1509706610251" TEXT="To: git@github.com:&lt;username&gt;/&lt;project&gt;.git">
<node CREATED="1509698997541" ID="ID_1104209323" MODIFIED="1509699143925" TEXT="In case of multiple keys and Host woj.github.com in the ssh config">
<node CREATED="1509699143928" ID="ID_746878609" MODIFIED="1509706623758" TEXT="git@hmh.github.com:&lt;username&gt;/&lt;project&gt;.git"/>
</node>
</node>
</node>
</node>
<node CREATED="1509655347078" ID="ID_1742294745" MODIFIED="1509655356929" POSITION="right" TEXT=".gitignore">
<node CREATED="1509655357814" ID="ID_1243722907" MODIFIED="1509655390617" TEXT="if placed in my home directory - it will become global for all projects in my home dir"/>
</node>
<node CREATED="1509654721899" ID="ID_1567668216" MODIFIED="1509654727835" POSITION="right" TEXT="GitHub">
<node CREATED="1509654777224" ID="ID_967011058" MODIFIED="1509654793358" TEXT="View starred repositories">
<node CREATED="1509654793361" ID="ID_1314587924" MODIFIED="1509654800093" TEXT="github.com/stars"/>
</node>
</node>
<node CREATED="1509444556031" ID="ID_1738359421" MODIFIED="1509655508281" POSITION="right" TEXT="links">
<node CREATED="1509444558337" ID="ID_1985484785" MODIFIED="1509444571592" TEXT="contributing to open source on gh">
<node CREATED="1509444571593" ID="ID_1528360823" MODIFIED="1509444574370" TEXT="https://egghead.io/lessons/javascript-how-to-update-a-pull-request-on-github">
<node CREATED="1509449748857" ID="ID_1099526054" MODIFIED="1509449750556" TEXT="https://github.com/eggheadio-github/stack-overflow-copy-paste"/>
</node>
</node>
</node>
<node CREATED="1509571117836" ID="ID_1561644400" MODIFIED="1509571160662" POSITION="left" TEXT="staging">
<node CREATED="1509571160663" ID="ID_1836811653" MODIFIED="1509571169253" TEXT="git add &lt;file&gt;"/>
<node CREATED="1509571169780" ID="ID_477952573" MODIFIED="1509571175928" TEXT="git reset &lt;file&gt;">
<node CREATED="1509571175929" ID="ID_1014510879" MODIFIED="1509571182519" TEXT="undo add"/>
</node>
</node>
<node CREATED="1509442175850" ID="ID_1411776358" MODIFIED="1509442264865" POSITION="left" TEXT="Finding changes (before commit)">
<node CREATED="1509442264867" ID="ID_599383549" MODIFIED="1509442268008" TEXT="git status"/>
<node CREATED="1509442268385" ID="ID_1611743405" MODIFIED="1509442271025" TEXT="git diff"/>
</node>
<node CREATED="1509657039958" ID="ID_1150872850" MODIFIED="1509657053861" POSITION="right" TEXT="remote">
<node CREATED="1509657043038" ID="ID_1967198164" MODIFIED="1509657062911" TEXT="listing remotes">
<node CREATED="1509703865804" ID="ID_565637574" MODIFIED="1509703872061" TEXT="git remote -v">
<node CREATED="1509706978468" ID="ID_1208508019" MODIFIED="1509706988780" TEXT="origin  git@github.com:wsierakowski/stack-overflow-copy-paste.git (fetch)&#xa;origin  git@github.com:wsierakowski/stack-overflow-copy-paste.git (push)&#xa;upstream        git@github.com:eggheadio-github/stack-overflow-copy-paste.git (fetch)&#xa;upstream        git@github.com:eggheadio-github/stack-overflow-copy-paste.git (push)"/>
</node>
</node>
<node CREATED="1509657053862" ID="ID_1628886888" MODIFIED="1509706797551" TEXT="updating remote">
<node CREATED="1509657070008" ID="ID_1160559531" MODIFIED="1509657103514" TEXT="git remote set-url origin git@github.com:&lt;username&gt;/&lt;project&gt;.git">
<node CREATED="1509703979871" ID="ID_683235389" MODIFIED="1509703987869" TEXT="where &apos;origin&apos; is the remote name"/>
</node>
</node>
<node CREATED="1509706800005" ID="ID_477057755" MODIFIED="1509706835708" TEXT="adding new remote (upstream in this case)">
<node CREATED="1509706803263" ID="ID_1565982114" MODIFIED="1509706818400" TEXT="git remote add upstream git@github.com:eggheadio-github/stack-overflow-copy-paste.git"/>
</node>
</node>
</node>
</map>
