# This is a PowerShell script that will open up Jupyter notebook using
# the single read-only virtual.
#
# This should work on the faculty machines 'dryadaXX' and possibly on other.
# This might also work on students' machines.

function StartNotebook() {
	# start the notebook
	jupyter notebook
}

function ActivateVirtual() {
	py -m venv env
	.\env\scripts\activate.ps1
}

function InstallRequirements() {
	pip install --upgrade pip
	pip install wheel
	pip install --requirement .\requirements.txt
}

function Main() {
	ActivateVirtual
	InstallRequirements
	StartNotebook
}

Main
