// IndexNow submission script
const submitToIndexNow = async (url, key, keyLocation) => {
  try {
    const response = await fetch('https://www.bing.com/IndexNow', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({
        host: new URL(url).hostname,
        key: key,
        keyLocation: keyLocation || `https://${new URL(url).hostname}/${key}.txt`,
        urlList: [url]
      })
    });
    
    if (response.ok) {
      console.log('Successfully submitted to IndexNow:', url);
    } else {
      console.error('Failed to submit to IndexNow:', await response.text());
    }
  } catch (error) {
    console.error('Error submitting to IndexNow:', error);
  }
};

// Run on page load if this is a production environment
if (window.location.hostname !== 'localhost' && window.location.hostname !== '127.0.0.1') {
  document.addEventListener('DOMContentLoaded', () => {
    // Get the current page URL
    const currentUrl = window.location.href;
    
    // Get the key from your site's configuration or environment variable
    const indexNowKey = 'YOUR_INDEXNOW_KEY'; // Replace with your actual key
    
    // Submit the current URL to IndexNow
    submitToIndexNow(currentUrl, indexNowKey);
  });
}
