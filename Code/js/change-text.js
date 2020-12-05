array_adv = [
    "Каждый день я посвящаю свое время недвижимости.<br>" +
    "На изучение рынка, просмотр, сравнительный анализ, на оценку и непосредственную продажу недвижимости.<br>" +
    "И то, на что у вас может уйти один день, я могу сделать на 1 час.<br>" +
    "Мой опыт позволяет выполнить поставленную задачу в короткие сроки!",

    "Знание «подводных камней» на рынке недвижимости дает возможность избежать очень  многих ошибок. А работа с командой юристов сделает БЕЗОПАСНОЙ любую сделку!<br>" +
    "Каждый объект недвижимости и ее участников проходят трехкратную проверку, по окончании которой выдается юридическое заключение.",

    "Экономия денег при продаже или покупке недвижимости – это не отказ от услуг агента, а привлечение грамотного специалиста к своей проблеме.<br>" +
    "Толковый агент точно знает как сберечь ваши деньги!<br>" +
    "Поможет избежать не нужных трат, а наличием нужных связей поможет сократить раходы на оформление, или прохождение лишних действий.<br>" +
    "И даже организовать грамотный торг у агента получится лучше!",

    "Каждый должен заниматься своим делом!<br>" +
    "Вам не придется тратить уйму времени на изучение рынка недвижимости, изучение законов и необходимых документов, " +
    "поглощение информации о ипотеке и её постоянно меняющихся условий, тонкостях налогового кодекса, или использовании материнского капитала и его последствиях.<br>" +
    "ВСЁ ЭТО ЗНАЮ И ПРИМЕНЯЮ Я! По этому точно знаю как сэкономить ваше время!",

    "Точное владение информацией на постоянно меняющемся рынке недвижимости.<br>" +
    "Умение грамотно вести переговоры.<br>" +
    "Профессиональное чутьё.<br>" +
    "Владение техниками продаж и маркетинга.<br>" +
    "Знаие законов, связанных с процессом продажи или покупки недвижимости.<br>" +
    "Мобильность и гибкость в различных ситуациях."
]

function change_item(int) {
    document.getElementsByClassName("color__black")[0].classList.remove("color__black");
    document.getElementsByClassName("global__section-advantage-image")[0].innerHTML = array_adv[int];
    document.getElementsByClassName("global__section-advantage-text-list-item")[int].classList.add("color__black");
}