READ FIRST: If you are intending to use both the Divi-CLI and the Divi Desktop software,
please scroll down and read the Note about Divi Desktop and Divi-cli following step 10.
Failure to follow the instructions there may result in unwanted and unexpected program
behavior.

Ubuntu Setup Instructions:

1)  Download the zip file from a link provided to your home directory (cd ~).
    (For example:  
    
    https://github.com/Divicoin/Divi/blob/master/releases/divi_ubuntu.zip)

2)  Unzip the files to your home directory.  Run install.sh.  

3)  Type in divid.  This should start the divi server.

4)  You can now execute Divi-cli commands; but, to start with, you should get your
    Divi account address by typing the following command into the command prompt: 

    divi-cli getaccountaddress ""

    Note that there are no spaces before or after the dash and the "" is required.
    If you hit enter, this command will execute and, if everything is setup up
    correctly, you will get an address back in hex.
    For example:
 
    DFrA9TAqLnFWhvCqHmXVKkpw5CJQmZVinK

5)  For the Beta, you need to take that address you got from the last step and 
    reach out to the team to get some test 'Divi' sent to your Beta address.  
    You can check the state of your beta wallet locally be using this command:  

    divi-cli getwalletinfo

    Along with several other details, this will give you the current balance.

6) Next, the key, or most basic, commands you should know about are: 

    divi-cli getblockcount

    This command will let you know where your local system is in terms of how 
    much of the blockchain you have and the position.  This is helpful in 
    understanding if you are on the right block or in other debugging.  

    divi-cli help 

    This command lets you see a list of all the current commands.

    divi-cli stop

    This allows the user to nicely stop the divid if something is messed up.  
    After doing this, you will need to restart divid and give it a few 
    moments to resync and then you will be able to do cli commands again.
    NOTE: This stop command is the only valid way to Close the window opened 
    in step 5). Closing this window by any other means will corrupt your Divi
    installation. Please ask for assistance if this occurs.
    
    divi-cli senttoaddress "[insert address here]" [insert floating point value]

    This command allows you to send divi to others.  

Note about Divi Desktop and Divi-cli:
 
If the user has the Divi Desktop program installed and working, and needs to run Divi-CLI commands, all the user needs to do is open a command prompt, navigate to the folder where the CLI  executable is, and run the CLI commands as normal from that command prompt. See Step 7 in the above list.  There is no need to do anything with the divi.conf file or run divid.  These are already in place from the Divi Desktop intall.  Do not issue the divi-cli stop command from that command prompt while the Divi Desktop is still running.   You can use the normal exit command to close the command prompt window.  If you need to close the Divi Desktop application, use the Window Close command by right clicking the tray icon.  If installing either CLI or the Divi Desktop, make sure that the other is not running. It is reccommended to install the Divi Desktop software first and then just unzip the Divi-CLI to the user desired folder to use as per the instructions in this paragraph. If either Divi Desktop or divid from the Divi-cli setup is running, stop it before trying to install the other one.


===========================================================================
== at this point you can be dangerous to yourself and others with divi == 
===========================================================================

For a full listing of commands, you can do divi-cli help, or reference the list below.

Divi-cli RPC Commands

== Blockchain ==
getbestblockhash
getblock "hash" ( verbose )
getblockchaininfo
getblockcount
getblockhash index
getblockheader "hash" ( verbose )
getchaintips
getdifficulty
getmempoolinfo
getrawmempool ( verbose )
gettxout "txid" n ( includemempool )
gettxoutsetinfo
verifychain ( numblocks )

== Control ==
getinfo
help ( "command" )
stop

== Divi ==
allocatefunds purpose alias amount ( "pay wallet" ( "voting wallet" ) )
createmasternodekey is deprecated!  A masternodekey is no longer necessary for setup.
fundmasternode alias amount TxID masternode ( "pay wallet" ( "voting wallet" ) )
getmasternodecount
getmasternodeoutputs is deprecated!  It has been replaced by fundmasternode for setup.
getmasternodewinners is a work in progress!  Check back soon.
getmasternodestatus
getmasternodewinners is a work in progress!  Check back soon.
Obfuscation, in general, and getpoolinfo, in particular, are deprecated!
listmasternodeconf is deprecated!  It is not necessary for setup.
listmasternodes ( "filter" )
masternode is deprecated!  Use one of the newer, clearer commands.
masternodeconnect "address"
masternodecurrent
mnsync "status|reset"
spork <name> [<value>]
startmasternode is deprecated!  Master nodes now automatically sart themselves

== Generating ==
getgenerate
gethashespersec
setgenerate generate ( genproclimit )

== Getinvalid ==
getinvalid

== Mining ==
getblocktemplate ( "jsonrequestobject" )
getmininginfo
getnetworkhashps ( blocks height )
prioritisetransaction <txid> <priority delta> <fee delta>
reservebalance ( reserve amount )
submitblock "hexdata" ( "jsonparametersobject" )

== Network ==
addnode "node" "add|remove|onetry"
getaddednodeinfo dns ( "node" )
getconnectioncount
getnettotals
getnetworkinfo
getpeerinfo
ping

== Rawtransactions ==
createrawtransaction [{"txid":"id","vout":n},...] {"address":amount,...}
decoderawtransaction "hexstring"
decodescript "hex"
getrawtransaction "txid" ( verbose )
sendrawtransaction "hexstring" ( allowhighfees )
signrawtransaction "hexstring" ( [{"txid":"id","vout":n,"scriptPubKey":"hex","redeemScript":"hex"},...] ["privatekey1",...] sighashtype )

== Util ==
createmultisig nrequired ["key",...]
estimatefee nblocks
estimatepriority nblocks
validateaddress "diviaddress"
verifymessage "diviaddress" "signature" "message"

== Wallet ==
addmultisigaddress nrequired ["key",...] ( "account" )
autocombinerewards true|false ( threshold )
backupwallet "destination"
bip38decrypt "diviaddress"
bip38encrypt "diviaddress"
dumpprivkey "diviaddress"
dumpwallet "filename"
encryptwallet "passphrase"
getaccount "diviaddress"
getaccountaddress "account"
getaddressesbyaccount "account"
getbalance ( "account" minconf includeWatchonly )
getnewaddress ( "account" )
getrawchangeaddress
getreceivedbyaccount "account" ( minconf )
getreceivedbyaddress "diviaddress" ( minconf )
getstakesplitthreshold
getstakingstatus
gettransaction "txid" ( includeWatchonly )
getunconfirmedbalance
getwalletinfo
importaddress "address" ( "label" rescan )
importprivkey "diviprivkey" ( "label" rescan )
importwallet "filename"
keypoolrefill ( newsize )
listaccounts ( minconf includeWatchonly)
listaddressgroupings
listlockunspent
listreceivedbyaccount ( minconf includeempty includeWatchonly)
listreceivedbyaddress ( minconf includeempty includeWatchonly)
listsinceblock ( "blockhash" target-confirmations includeWatchonly)
listtransactions ( "account" count from includeWatchonly)
listunspent ( minconf maxconf  ["address",...] )
lockunspent unlock [{"txid":"txid","vout":n},...]
move "fromaccount" "toaccount" amount ( minconf "comment" )
multisend <command>
sendfrom "fromaccount" "todiviaddress" amount ( minconf "comment" "comment-to" )
sendmany "fromaccount" {"address":amount,...} ( minconf "comment" )
sendtoaddress "diviaddress" amount ( "comment" "comment-to" )
sendtoaddressix "diviaddress" amount ( "comment" "comment-to" )
setaccount "diviaddress" "account"
setstakesplitthreshold value
settxfee amount
signmessage "diviaddress" "message"
