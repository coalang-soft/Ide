@echo off
cd ..
md lib
xcopy /y src lib
echo %cd%
xcopy /s /e /y /i F:\Info\Java\NewWorkspace\CCL\CclStandardLib lib\ccl
md lib\run
xcopy /y src\run lib\run
xcopy /y F:\Info\CCL\MulpamUI lib
md bin
xcopy /s /e /y /i res bin
cd bin
java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl.jar -compile ../src/main.ccl -lib ..\lib -config
copy ..\src\main.cc0 ..\bin
java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl.jar -lib-files "F:\Info\CCL\I_SuiteFX\bin;F:\Info\CCL\JSearchFX\bin;F:\Info\CCL\JSearch\bin;F:\Info\CCL\DragDropFX\bin;F:\Info\CCL\JVisit\bin;F:\Info\CCL\JVisitFX\bin;F:\Info\CCL\RichTextFXExtension\out\production\RichTextFXExtension;F:\Info\CCL\RichTextFXExtension\richtextfx-fat-0.7-M5.jar;F:\Info\CCL\JVisit\bin;F:\Info\CCL\FXParts\bin;" ../src/main.cc0
::java -jar F:\Info\Java\NewWorkspace\CCL\CclJars\ccl.jar -lib-files "F:\Info\CCL\I_SuiteFX\bin;F:\Info\CCL\JSearchFX\bin;F:\Info\CCL\JSearch\bin;F:\Info\CCL\DragDropFX\bin;F:\Info\CCL\JVisit\bin;F:\Info\CCL\JVisitFX\bin;F:\Info\CCL\RichTextFXExtension\out\production\RichTextFXExtension;F:\Info\CCL\RichTextFXExtension\richtextfx-fat-0.7-M5.jar;F:\Info\CCL\JVisit\bin;F:\Info\CCL\FXParts\bin;" -archive "ide.zip"
pause
del ..\bin\*.cl2