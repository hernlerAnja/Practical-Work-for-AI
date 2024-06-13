import os

# Directory containing your PDB files
pdb_directory = 'PDB_files'

# Output file name for the .ds file
ds_file = "pdb_dataset.ds"

# List all .pdb files in the directory
pdb_files = [file for file in os.listdir(pdb_directory) if file.endswith(".pdb")]

# Write the file paths to the .ds file
with open(ds_file, "w") as f:
    for pdb_file in pdb_files:
        f.write(os.path.join(pdb_directory, pdb_file) + "\n")

print("File paths written to", ds_file)
