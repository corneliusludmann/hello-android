FROM gitpod/workspace-full

# Install fastlane
RUN brew install fastlane

# Install Android SDK manager
ENV ANDROID_HOME=/home/gitpod/android
RUN mkdir -p "$ANDROID_HOME" && \
    curl -sSLo /tmp/android-cmdline-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-6514223_latest.zip && \
    unzip -d "$ANDROID_HOME/cmdline-tools/" /tmp/android-cmdline-tools.zip && \
    rm /tmp/android-cmdline-tools.zip

# Install Android SDK
SHELL ["/bin/bash", "-c"]
RUN source /home/gitpod/.bashrc.d/99-java && \
    yes 2>/dev/null | $ANDROID_HOME/cmdline-tools/tools/bin/sdkmanager "platform-tools" "platforms;android-29"

# Update PATH environment variable
ENV PATH=/home/linuxbrew/.linuxbrew/bin:$ANDROID_HOME/cmdline-tools/tools/bin:$PATH
