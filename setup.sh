docker_name=$(basename "$(pwd)")
docker $docker_name run  -p 127.0.0.1:8080:8080 nicholasbrandt/texdocker
url="http://localhost:8080"

# Try xdg-open for Linux systems
if command -v xdg-open > /dev/null; then
    xdg-open "$url"
# Try open for macOS
elif command -v open > /dev/null; then
    open "$url"
# Try start for Windows
elif command -v start > /dev/null; then
    start "$url"
else
    echo "Could not open URL. Please open it manually in your web browser."
fi
