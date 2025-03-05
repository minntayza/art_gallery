document.addEventListener('DOMContentLoaded', function() {
    console.log('Artist JS loaded'); // Debug line

    window.openArtistModal = function(name, image, type, desc) {
        console.log('Opening modal for:', name); // Debug line
        const modal = document.getElementById('artistModal');
        
        // Set modal content
        document.getElementById('modalName').textContent = name;
        document.getElementById('modalImage').src = image;
        document.getElementById('modalType').textContent = type;
        document.getElementById('modalDesc').textContent = desc;
        
        // Show modal
        modal.style.display = 'block';
        document.body.style.overflow = 'hidden';
    };

    // Close modal when clicking the close button
    document.querySelector('.close-modal').addEventListener('click', function() {
        const modal = document.getElementById('artistModal');
        modal.style.display = 'none';
        document.body.style.overflow = 'auto';
    });

    // Close modal when clicking outside
    window.addEventListener('click', function(e) {
        const modal = document.getElementById('artistModal');
        if (e.target === modal) {
            modal.style.display = 'none';
            document.body.style.overflow = 'auto';
        }
    });
});