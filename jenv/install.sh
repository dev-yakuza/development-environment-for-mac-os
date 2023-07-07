jenv enable-plugin export
jenv enable-plugin maven

brew install openjdk@11
sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
echo 'export PATH="/usr/local/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/usr/local/opt/openjdk@11/include"
jenv add /usr/local/Cellar/openjdk@11/11.0.19/libexec/openjdk.jdk/Contents/Home

brew install openjdk@17
sudo ln -sfn /usr/local/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
echo 'export PATH="/usr/local/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
jenv add /usr/local/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home
jenv add  /usr/local/Cellar/openjdk/20.0.1/libexec/openjdk.jdk/Contents/Home

jenv global openjdk64-17.0.7

echo 'export alias java=/Users/$USER/.jenv/shims/java' >> ~/.zshrc`
