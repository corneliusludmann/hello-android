FROM gitpod/workspace-full

# Install fastlane
RUN brew install fastlane

# Install Android SDK manager
ENV ANDROID_HOME=/home/gitpod/android
RUN mkdir -p "$ANDROID_HOME" && \
    curl -sSLo /tmp/android-cmdline-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-6514223_latest.zip && \
    unzip -d "$ANDROID_HOME/cmdline-tools/" /tmp/android-cmdline-tools.zip && \
    rm /tmp/android-cmdline-tools.zip

ENV PATH=/home/linuxbrew/.linuxbrew/bin:$ANDROID_HOME/cmdline-tools/tools/bin:$PATH
