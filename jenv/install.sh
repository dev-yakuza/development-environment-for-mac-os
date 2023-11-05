jenv enable-plugin export
jenv enable-plugin maven

brew install openjdk@11
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
echo 'export PATH="/usr/local/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"
jenv add /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk/Contents/Home
# brew info openjdk@11

brew install openjdk@17
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
echo 'export PATH="/usr/local/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
jenv add /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
# brew info openjdk@17

sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
echo 'export PATH="/usr/local/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
jenv add /opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home
# brew info openjdk

jenv global openjdk64-17.0.9

echo 'export alias java=/Users/$USER/.jenv/shims/java' >> ~/.zshrc
