import Choices from 'choices.js'

const initChoices = () => {
  const element = document.querySelector('.multiple-select')
  if (element) {
    const choices = new Choices(element, {
      removeItems: true,
      removeItemButton: true,
    });
  }
}

export { initChoices }
