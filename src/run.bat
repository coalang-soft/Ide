@echo off
cd ..
md bin
cd bin
java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl0.4.7.jar -compile ../src/main.ccl -lib F:\Info\Java\NewWorkspace\CCL\CclJars -config
copy ..\src\main.cc0 ..\bin
java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl0.4.7.jar -lib-files "F:\Info\CCL\I_SuiteFX\bin;F:\Info\CCL\JSearchFX\bin;F:\Info\CCL\JSearch\bin;F:\Info\CCL\DragDropFX\bin;F:\Info\CCL\JVisit\bin;F:\Info\CCL\JVisitFX\bin;F:\Info\CCL\RichTextFXExtension\out\production\RichTextFXExtension;F:\Info\CCL\RichTextFXExtension\richtextfx-fat-0.7-M5.jar;F:\Info\CCL\JVisit\bin;F:\Info\CCL\FXParts\bin;" ../src/main.cc0
::java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl0.4.7.jar -lib-files "F:\Info\CCL\I_SuiteFX\bin;F:\Info\CCL\JSearchFX\bin;F:\Info\CCL\JSearch\bin;F:\Info\CCL\DragDropFX\bin;F:\Info\CCL\JVisit\bin;F:\Info\CCL\JVisitFX\bin;F:\Info\CCL\RichTextFXExtension\out\production\RichTextFXExtension;F:\Info\CCL\RichTextFXExtension\richtextfx-fat-0.7-M5.jar;F:\Info\CCL\JVisit\bin;F:\Info\CCL\FXParts\bin;" -archive "ide.zip"
pause
del ..\bin\*.cl2