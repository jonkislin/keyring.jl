using Pkg

function setup_python()

    # Ideal functionality:
    # 1. Ask the user to point to their python installation
    # 2a. Check to see if python keyring is installed
    # 2b. If not, install it for the user 
    # 3. Wrap everything via class, macro, or function 

    ENV["PYTHON"] = "/Users/xerocomplex/opt/anaconda3/bin/python"
    Pkg.build("PyCall")
           
end

setup_python()

using PyCall

# The most basic MVP
keyring = pyimport("keyring")