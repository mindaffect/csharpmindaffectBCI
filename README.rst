mindaffectBCI
=============
This repository contains the C# (.NET) SDK code for the Brain Computer Interface (BCI) developed by the company [Mindaffect](https://mindaffect.nl).

File Structure
--------------
This repository is organized roughly as follows:

 - `src` - contains the C# package containing the mindaffectBCI SDK.  Important files within this directory are:
 
   - Noisetag.cs - This module contains the main API for developing User Interfaces with BCI control
   - UtopiaController.cs - This module contains the application level APIs for interacting with the MindAffect Decoder.
   - UtopiaClient.cs - This module contains the low-level networking functions for communicating with the MindAffect Decoder - which is normally a separate computer running the EEG analysis software.
   - SttimSeq.cs -- This module contains the low-level functions for loading and codebooks - which define how the presented stimuli will look.

Installing mindaffectBCI
------------------------

That's easy, just download this repository. 


Testing the mindaffectBCI SDK
-----------------------------

This SDK provides the functionality needed to add Brain Controls to your own applications.  However, it *does not* provide the actual brain measuring hardware (i.e. EEG) or the brain-signal decoding algorithms. 

In order to allow you to develop and test your Brain Controlled applications without connecting to a real mindaffect Decoder, we provide a so called "fake recogniser".  This fake recogniser simulates the operation of the true mindaffect decoder to allow easy development and debugging.  Before starting with the example output and presentation modules.  You can download the fakerecogniser from our [github page](https://github.com/mindaffect/pymindaffectBCI/tree/master/bin)

You should start this fake recogniser by running, either ::

  bin/startFakeRecogniser.bat
  
if running on windows, or  ::

  bin/startFakeRecogniser.sh

if running on linux/macOS

If successfull, running these scripts should open a terminal window which shows the messages recieved/sent from your example application.

Note: The fakerecogniser is written in [java](https://www.java.com), so you will need a JVM with version >8 for it to run.  If needed download from [here](https://www.java.com/ES/download/)

Quick Installation Test
-----------------------

First build the code.  If you import the project in visual-studio this should just need you to hit build.  If on the command line then run::
  msbuild

if on Windows, or ::
  xbuild

if on linux (with [mono](www.mono-project.com)).

If it build successfully, can can run a quick test if the installation is correct by running::

  mono --debug mindaffectBCI.exe

Essentially, this run the SDK test code which pretends to run a full BCI sequence, with decoder discovery, calibration and prediction.  If you have the fakerecogniser running then this should do this in a terminal and generate a lot of text saying things like: `cal 1/10`.


Simple *presention* module
----------------------------

This SDK follows pretty much identically that of the [python SDK](www.github.com/mindaffect/pymindaffectBCI).  Thus the procedure for building a presentation module is basically the same.

Currently, we don't have a pure C# presentation example implemented, if you are interested in making one then you can basically just use the same approach as used in the python example.

For a working example using the C# mindaffect BCI SDK, see our [unity](www.unity.com) SDK, which you can find [here](www.github.com/mindaffect/unitymindaffectBCI)
