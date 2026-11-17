// Match the main site's mobile navigation, including keyboard dismissal.
document.documentElement.classList.add('js');
const menu = document.querySelector('.menu-toggle');
const nav = document.querySelector('#primary-nav');
const sections = [...nav.querySelectorAll('.section-toggle')];

function closeMenu() {
  menu.setAttribute('aria-expanded', 'false');
  nav.classList.remove('open');
  sections.forEach((section) => {
    section.setAttribute('aria-expanded', 'false');
    section.parentElement.classList.remove('section-open');
  });
}

menu.addEventListener('click', () => {
  const open = menu.getAttribute('aria-expanded') !== 'true';
  closeMenu();
  menu.setAttribute('aria-expanded', String(open));
  nav.classList.toggle('open', open);
});

sections.forEach((section) => {
  section.addEventListener('click', () => {
    const open = section.getAttribute('aria-expanded') !== 'true';
    sections.forEach((other) => {
      const expanded = other === section && open;
      other.setAttribute('aria-expanded', String(expanded));
      other.parentElement.classList.toggle('section-open', expanded);
    });
  });
});

nav.addEventListener('keydown', (event) => {
  if (event.key === 'Escape') {
    closeMenu();
    menu.focus();
  }
});
matchMedia('(max-width: 800px)').addEventListener('change', closeMenu);
