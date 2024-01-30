param (
    [Alias('t')]
    [string]$target_folder = '.venv',
    [Alias('r')]
    [string]$requirements_file
)

virtualenv $target_folder

."$target_folder/Scripts/activate"

if ($requirements_file) {
    $requirements_file = Resolve-Path $requirements_file
    pip install -r $requirements_file
}
