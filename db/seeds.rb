# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.destroy_all if Rails.env.development?
ActiveRecord::Base.connection.reset_pk_sequence!("pages") 

Trip.destroy_all if Rails.env.development?
ActiveRecord::Base.connection.reset_pk_sequence!("trips") 
Program.destroy_all if Rails.env.development?
Faq.destroy_all if Rails.env.development?

amazónia = Trip.create(name: "Amazónia", start_date: Date.new(2021,04,22), end_date: Date.new(2021,05,04), price: 1900, description: "A Amazónia é a maior floresta tropical do mundo com a maior concentração de biodiversidade do planeta, num ecossistema que reúne cerca de 25% de toda a vida animal do Mundo.<br><br>
    Há uma percepção que a Amazónia é um maciço verde, com algumas populações indígenas isoladas... Mas na verdade é uma floresta povoada, ao longo dos vários rios e afluentes, vão-se encontrando sempre comunidades instaladas. É um território extenso e altamente diverso. Nesta viagem propomos conhecer uma pequena parte deste imenso e magnífico território. Porque mais do que tentar fazer muitos kms e passar à superfície por muitos sítios, propomos percorrer menos, mas de forma a conhecer bem uma parte. E encontrar ali, algo que na correria das nossas rotinas, já nem percebemos a sua relevância. A calma de um Tempo menos apressado.<br><br>
    Propomos explorar parte da Reserva de Desenvolvimento Sustentável do Rio Negro, perto do “encontro das águas” em que com o rio Solimões, se forma o grande rio Amazonas. O ponto de partida é o centro urbano em plena floresta - Manaus. Lá vamos conhecer pessoas que dedicam a sua vida na preservação de um território que nos implica a todos, o mote para perceber a relevância do sítio que vamos visitar. Depois, no principal meio de transporte na Amazonia, vamos de barco em direção às comunidades do Tumbira e Santa Helena do Inglês, onde concentramos nossas atividades. Muito próximas uma da outra, com cerca de 30 famílias cada.<br><br> 
    Toda esta viagem é feita com e pelas comunidades locais. Sempre numa lógica de turismo sustentável, em que parte de uma estratégia local, o turismo é uma das principais fontes de rendimento das famílias ali instaladas e elas são uma das primeiras frentes de preservação da floresta.<br><br>
    Antes do regresso a Manaus, vamos ainda a “Presidente Figueiredo”, zona conhecida pelas suas cascatas e lagoas. Em plena floresta.<br><br>
    Nota importante, apesar da grande biodiversidade que ali habita, os animais no seu estado natural, refugiam-se dos humanos. Portanto, ao não querermos fazer parte da exploração turística de que algumas agências fazem de animais que se pretendem selvagens, não é garantido vislumbrarmos muita diversidade destes animais.")

guatemala = Trip.create(name: "Guatemala", start_date: Date.new(2021,04,22), end_date: Date.new(2021,05,04), price: 1250, description: "A origem da palavra “Guatemala” é, ainda hoje em dia, uma incógnita. Acredita-se que possa derivar da palavra indígena Quhatezmalha, que significa 'montanha que verte água', numa alusão ao vulcão Agua, que destruiu a Cidade Velha – Santiago de los Caballeros –, primeira capital espanhola da capitania geral. Por outro lado pode ser também uma derivação da palavra náhuatl Quauhtlemallan, que significa 'lugar com muitas árvores'. Em qualquer uma delas podemos ver a extremada conexão com a natureza. <br><br>
A Guatemala é o berço da civilização Maia, cujo centro era a região de Petén, apresentando caraterísticas únicas na sua cultura própria
e no quadro da cultura centro-americana. É este país geográfica
e culturalmente distante do nosso que vos propomos visitar. Um périplo pelas maravilhas reminiscentes do seu glorioso passado Maia e o atual presente, de património vivido, base de quotidiano da vida local. Dispõe de uma paisagem que para nós, europeus, é quase rara: uma natureza em grande parte autóctone e rica em biodiversidade que só aquele clima permite. <br><br>
Esta viagem será feita por um agente local, profundo conhecedor do território, que acompanhará o grupo à vossa escolha, do principio ao fim da experiência.")



Program.create(trip_id: guatemala.id, day: "Dia 1", summary:"Chegada Aeroporto", description: "Chegada livre, acomodação<br>Dicas para Jantar livre em Antigua<br>Pernoite em hotel em Antigua")
Program.create(trip_id: guatemala.id, day: "Dia 2", summary:"Visita Antigua", description: "<i>MANHÃ</i> – Centro histórico<br><i>TARDE</i> – visita aos principais pontos de interesse<br><i>NOITE</i> - Jantar livre em Antigua<br>Pernoite em hotel em Antigua")
Program.create(trip_id: guatemala.id, day: "Dia 3", summary:"Visita povoações", description: "<i>MANHÃ</i>: Santa María de Jesús<br><i>TARDE</i>: almoço em San Juan del Obispo, Visita Fábrica de Cerámica, Chocolate Artesanal, Vinera Artesanal<br><i>NOITE</i> - Jantar livre em Antigua<br>Pernoite em hotel em Antigua")
Program.create(trip_id: guatemala.id, day: "Dia 4", summary:"Visita do vulcão de Pacaya", description: "<i>MANHÃ</i> e <i>TARDE</i> : Subida ao topo do vulcão Pacaya*<br>*Actividade com esforço fisico considerável – O guia consultará e informará detalhadamente o percurso e haverá uma alternativa de percurso, caso não haja total concordancia e conforto nesta actividade<br><i>NOITE</i> - Jantar livre em Antigua<br>Pernoite em hotel em Antigua")
Program.create(trip_id: guatemala.id, day: "Dia 5", summary:"Saída de Antigua", description: "<i>MANHÃ</i>: saída de Antigua e chegada ao lago Atitlan, tour no lago em Panajachel<br><i>TARDE</i>: tour pela povoação<br><i>NOITE</i>: jantar livre<br>Pernoite em hotel em San Marcos de la Laguna")
Program.create(trip_id: guatemala.id, day: "Dia 6", summary:"Lago de Atitlan – Quetzaltenango", description: "<i>MANHÃ</i> e <i>TARDE</i>: Aguas Termais nas Fuentes Georgina, almoço em Quetzaltenango<br><i>NOITE</i> jantar livre<br>Pernoite em San Marcos de la Laguna ")
Program.create(trip_id: guatemala.id, day: "Dia 7", summary:"Panajachel- Nebaj", description:"<i>MANHÃ</i> e <i>TARDE</i>: Viagem para Nebaj com paragem em Sacapulas<br><i>NOITE</i>: jantar livre<br>Pernoite em Nebaj" )
Program.create(trip_id: guatemala.id, day: "Dia 8", summary:"Passeio Nebaj - San Juan Accul", description:"<i>MANHÃ</i>: Caminhada Nebaj- San Juan Accul.<br><i>TARDE</i>: Visita à quinta Mil amores, para degustar o famoso queijo Chancol.<br>Regreso de carro de San Juan Accul a Nebaj.<br><i>NOITE</i>: Jantar livre<br>Pernoite em Nebaj" )
Program.create(trip_id: guatemala.id, day: "Dia 9", summary:"Nebaj- Semuc Champey", description:"<i>MANHÃ</i> e <i>TARDE</i>: viagem para Semuc Champey<br><i>NOITE</i>: jantar livre<br>Pernoite em Semuc Champey")
Program.create(trip_id: guatemala.id, day: "Dia 10", summary:"Semuc Champey", description:"<i>MANHÃ</i> e <i>TARDE</i>: Tour pelas “poças” de Semuc Champey<br><i>NOITE</i>: Jantar livre<br>Pernoite Semuc Champey")
Program.create(trip_id: guatemala.id, day: "Dia 11", summary:"Semuc Champey – Flores", description:"<i>MANHÃ</i> – Viagem para Flores<br><i>TARDE</i> – Visita a Flores<br><i>NOITE</i>: Jantar livre<br>Pernoite em Flores")
Program.create(trip_id: guatemala.id, day: "Dia 12", summary:"Tour Parque Nacional Tikal", description:"<i>MANHÃ</i> e <i>TARDE</i>: Visita ao parque nacional de Tikal<br><i>NOITE</i>: Jantar Livre<br>Pernoite em Flores")
Program.create(trip_id: guatemala.id, day: "Dia 13", summary:"Flores – Copan Ruínas (Honduras)", description:"<i>MANHÃ</i> e <i>TARDE</i>: Viagem para Copan<br><i>NOITE</i>: Jantar livre<br>Pernoite em Copan")
Program.create(trip_id: guatemala.id, day: "Dia 14", summary:"Tour Copan Ruínas", description:"<i>MANHÃ</i> e <i>TARDE</i>: Visita às ruínas de Copan e regresso à vila, com passeio pela vila<br><i>NOITE</i>: Jantar livre<br>Pernoite em Copan")
Program.create(trip_id: guatemala.id, day: "Dia 15", summary:"Regresso a Antigua", description:"<i>MANHÃ</i> e <i>TARDE</i>: viagem de regresso a Antigua<br>Jantar livre<br>Pernoite em Antigua")
Program.create(trip_id: guatemala.id, day: "Dia 16", summary:"Regresso a casa", description:"Vôo de Regresso")

Program.create(trip_id: amazónia.id, day: "Dia 1", summary:"CHEGADA A MANAUS", description: "Chegada, acomodação <br> Dicas para Jantar livre na praça<br>Pernoite em hotel em Manaus I")
Program.create(trip_id: amazónia.id, day: "Dia 2", summary:"VISITA A MANAUS", description: "<i>MANHÃ</i>: Encontro das Águas, Museu do Seringal <br><i>TARDE</i>: Centro histórico e Visita ao Teatro Amazonas <br> <i>NOITE</i>: Happy hour na praça<br>Pernoite em hotel em Manaus II / <br> Refeições não inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 3", summary:"MUSEU MUSA / PALESTRA", description: "<i>MANHÃ</i>: Museu da Amazônia - MUSA <br><i>TARDE</i>: Palestra sobre cenário atual da Amazônia, ameaças, áreas protegidas, povos Amazônicos e projetos de conservação com profissional/ativista <br> Pernoite em hotel em Manaus III / Refeições não inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 4", summary:"IDA PARA TUMBIRA", description: "<i>MANHÃ</i>: Saída do hotel às 9h00 <br> Saída de lancha às 9h30 <br> Viagem ao Tumbira, Acomodação <br> <i>TARDE</i>: Apresentação da Comunidade e do espaço NOITE: Passeio noturno de lancha – sons da floresta <br> Pernoite Pousada no Tumbira I / Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 5", summary:"TRILHA DO TUMBIRA", description: "<i>MANHÃ</i>: Trilha do Tumbira <br> <i>TARDE</i>: Oficina de Artesanato com palhas locais e tingimento natural – produção de abano individual. <br> Pernoite Pousada no Tumbira II / Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 6", summary:"TRILHA DA NASCENTE", description: "<i>MANHÃ</i>: Trilha da Nascente – Trilha mais longa (nível leve) com visita a árvores centenárias e nascente de água.<br><i>TARDE</i>: Visita à marcenaria do Manoel e produção de peças de madeira <br> Pernoite Pousada no Tumbira III /<br> Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 7", summary:"PASSEIO DE CANOA IGAPÓ", description: "<i>MANHÃ</i>: Passeio de Canoa pelo igapó e banho de rio <br> <i>TARDE</i>: Praia Alta <br> Pernoite na Floresta em redes / Tumbira IV /<br> Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 8", summary:"COMUNIDADE DE TUMBIRA", description: "<i>MANHÃ</i>: Volta para comunidade e livre para descanso <br> <i>TARDE</i>: Visita à comunidade vizinha (Inglês ou Saracá). <br> Conhecer comunidade; Casa de farinha; conversa com fundadores da comunidade. <br> Pernoite Pousada no Tumbira V / Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 9", summary:"ARQUIPÉLAGO ANAVILHANAS", description: "<i>MANHÃ</i>: Nascer do sol e pesca <br> <i>TARDE</i>: Passeio de lancha pelo arquipélago de Anavilhanas <br> Pernoite Pousada no Tumbira VI/<br>Refeições inclusas")
Program.create(trip_id: amazónia.id, day: "Dia 10", summary:"IDA PARA PRESIDENTE FIGUEIREDO", description: "<i>MANHÃ</i>: Caverna Refúgio do Maroaga e Gruta da Judéia <br> <i>TARDE</i>: Cachoeira da Iracema e cachoeira das Araras <br> Pernoite em Hotel em Presidente Figueiredo II /<br> Jantar não incluso")
Program.create(trip_id: amazónia.id, day: "Dia 11", summary:"GRUTAS E CACHOEIRAS", description: "<i>MANHÃ</i>: Caverna Refúgio do Maroaga e Gruta da Judéia <br> <i>TARDE</i>: Cachoeira da Iracema e cachoeira das Araras <br> Pernoite em Hotel em Presidente Figueiredo II / Jantar não incluso")
Program.create(trip_id: amazónia.id, day: "Dia 12", summary:"CACHOEIRA CABEÇA E DAS ONÇAS", description: "<i>MANHÃ</i>: Cachoeira cabeça da Perema <br> <i>TARDE</i>: Cachoeira Natal ou cachoeira das onças <br> Pernoite em Hotel em Presidente Figueiredo III /<br>Jantar não incluso")
Program.create(trip_id: amazónia.id, day: "Dia 13", summary:"LAGOA AZUL", description: "<i>MANHÃ</i>: Lagoa Azul e fervedouro <br> <i>TARDE</i>: Cachoeira salto do Ipê<br>16h00 Volta para Manaus")
Program.create(trip_id: amazónia.id, day: "Dia 13", summary:"VÔO DE REGRESSO", description: "Dia livre de descanso, compras, últimos passeios e vôos de retorno")

Faq.create(trip_id: amazónia.id, question:"É necessário visto?", answer:"Para os portugueses não é necessário visto para o Brasil. Basta que leves o teu passaporte, com validade mínima de seis meses a partir do final da viagem, bem como o teu bilhete de avião. De qualquer das formas, podes consultar toda a informação em http://cglisboa.itamaraty.gov.br/pt- br")
Faq.create(trip_id: amazónia.id, question:"Como é o clima durante a viagem?", answer:"O clima é, numa forma geral, quente e húmido. Com praticamente apenas duas estações, o verão é curto e quente, e o inverno longo, morno e com bastante chuva. Ao longo do ano, em geral, a temperatura varia entre 24°C a 33°C. A estação quente permanece durante cerca de 3 meses, de 13 de agosto a 1 de novembro, com temperaturas máximas diárias acima de 33°C, sendo o dia mais quente do ano 22 de setembro. A estação de maior precipitação dura cerca de 6 meses, de 5 de dezembro a 8 de junho, com grandes probabilidades de chuvas tropicais diárias, sendo os restantes 6 meses chamados “estação seca”.")
Faq.create(trip_id: amazónia.id, question:"Que tipo de vestuário devo levar?", answer:"Prepara-te para suar bastante. O clima, em geral, será quente, portanto a maior parte da roupa a considerar deve ser fresca, arejada e confortável. À noite pode levantar-se algum vento e, dentro da floresta, pode ser mais fresco, pelo que recomendamos que leves alguma roupa mais abrigada. Para trilhos na floresta, recomendamos roupa “comprida”, que proteja a maior parte do corpo, mas que também não seja muito quente. Esta vai servir, especialmente, para proteção de eventuais picadas de insetos. A possibilidade de haver dias com chuva é grande, mas a temperatura mantém-se sempre elevada. Recomendamos também que leves material impermeável (mochilas, corta-vento).")
Faq.create(trip_id: amazónia.id, question:"Como é o alojamento?", answer:"Em Manaus escolhemos um hotel, em registo habitual: cama e casa-de-banho privativa, em pleno centro de uma cidade globalizada e dos principais pontos de interesse. Teremos acesso a todas as condições e meios (eletricidade, internet). Nas comunidades ficamos em pousadas – construções feitas em madeira – com todas as comodidades de privacidade, ainda que exista a opção dormir em rede como fazem todos os comunitários. Fala connosco previamente, se for do teu interesse.")
Faq.create(trip_id: amazónia.id, question:"Podem reservar alojamento antes e/ou depois da viagem?", answer:"O programa só inclui os 14 dias de viagem, mas se chegares antes ou queres ficar depois, entra em contato connosco. Podemos dar dicas do que fazer, para onde ir e agilizar o processo.")
Faq.create(trip_id: amazónia.id, question:"O que comemos durante a viagem?", answer:"Em Manaus, temos acesso a todo o tipo restaurantes: desde opções de comida local a restaurantes de cadeias internacionais. Nas comunidades vamos ter gastronomia confecionada pelos locais, sendo a base primordial o peixe pescado no rio Negro acompanhado de variadades de legumes e frutas autóctones. Estas receitas locais são confecionadas por comunitários que fizeram formações disponibilizadas por ONGs de apoio a ações de sustentabilidade económica das comunidades.")
Faq.create(trip_id: amazónia.id, question:"Como é o acesso à internet e à electricidade?", answer:"Em Manaus, o serviço de roaming funciona perfeitamente. Na floresta é mais intermitente, mas em todos os sítios de hospedagem vamos ter acesso a WI-FI. Provavelmente não terá a rapidez a que estamos habituados, mas se pensarmos no contexto geográfico onde estamos, vai parecer incrível termos acesso a internet de todo. Nas comunidades onde vamos estar há eletricidade 24h por dia, mas enquanto estivermos a fazer passeios dificilmente teremos acesso a qualquer de ambas.")
Faq.create(trip_id: amazónia.id, question:"Como são os transportes durante a viagem?", answer:"Todos os transportes ao longo do percurso estão assegurados por nós. Em Manaus será por uma carrinha van com lugar para todos os viajantes. Durante a estadia nas comunidades, o único meio de transporte possível é o barco: uma lancha de metal com motor.")
Faq.create(trip_id: amazónia.id, question:"Esta viagem exige cuidados de saúde ou vacinação especiais?", answer:"Recomendamos a todos os viajantes a <a href='https://www.consultadoviajante.com'>Consulta do Viajante</a> como forma de aconselhamento médico. Aqui serás aconselhado de acordo com o destino, para que saibas o plano de vacinação adequado (caso este seja necessário) e que precauções tomar antes e depois da viagem.")
Faq.create(trip_id: amazónia.id, question:"Viajamos juntos desde Portugal?", answer:"Não. O ponto de encontro das nossas viagens é sempre no destino. Assim, tens a flexibilidade para escolher as datas e os horários que mais te convêm.")

Faq.create(trip_id: guatemala.id, question:"Qual o aeroporto preferencial para a chegada à Guatemala e saída?", answer:"Deves comprar os teus voos com destino e partida do Aeroporto Internacional La Aurora, Guatemala. A cidade de Antigua onde a viagem começa e termina, é a 40 min deste aeroporto. Nesta viagem, por motivos logísticos, só assegura transfers a partir deste aeroporto. Caso o teu voo esteja centralizado noutro aeroporto, terás de assegurar o teu transporte para o hotel da primeira noite, bem como do hotel da última noite até ao aeroporto.")
Faq.create(trip_id: guatemala.id, question:"É preciso visto para esta viagem?", answer:"Os viajantes portugueses não precisam de visto. Basta apresentares o passaporte, com validade mínima de seis meses após a data de regresso, onde é carimbada a autorização de permanência no país por tempo determinado.")
Faq.create(trip_id: guatemala.id, question:"Como são os alojamentos?", answer:"Escolhemos alojamentos bem localizados no centro das cidades e perto dos principais pontos de interesse, de forma a facilitar as deslocações previstas no programa. São alojamentos que respiram a atmosfera das povoações visitadas, caracterizados pelas marcas culturais da região, de forma a acentuar os contrastes que se podem sentir ao longo da viagem. Os quartos normalmente têm duas camas, mas em alguns casos o grupo divide-se por individuais e triplos – quando enchemos por completo os pequenos hotéis. As casas de banho têm água quente. São chuveiros ‘latinos’, com pouca pressão e aquecidos com sistemas elétricos. Têm sempre sanitários europeus e são abastecidas de papel higiénico e toalhas. A maioria dos alojamentos tem wi-fi.")
Faq.create(trip_id: guatemala.id, question:"Como é a alimentação durante a viagem?", answer:"A alimentação centro-americana baseia-se no milho, uma dieta ancestral com origem no povo maia. Nesta região do planeta, o milho continua a ter uma importância vital na alimentação da maioria das pessoas, principalmente da população rural. Além do milho, as leguminosas e os cereais são bastante comuns nos países por onde viajamos. Já a carne de porco e vaca é menos comum, sendo a carne de galinha a mais acessível. <br><br>A maioria das nossas refeições é à base de arroz, milho, feijão, frango e leguminosas variadas. Porém, nas cidades existe bastante variedade gastronómica, da mais tradicional à francesa, italiana, chinesa, coreana ou norte-americana. Para muitos dos nossos viajantes, a qualidade e variedade da fruta desta região é uma agradável surpresa. Entre bancas de comida de rua, restaurantes e comedores - o equivalente à tasquinha portuguesa - as nossas refeições são tudo menos monótonas. Se és vegetariano não te preocupes. Nesta região, a oferta de opções é bastante alargada.")
Faq.create(trip_id: guatemala.id, question:"Como são os transportes?", answer:"Devido aos muitos kms de estrada que percorremos por estradas centro-americanas, durante grande parte da viagem usamos uma carrinha de 14 lugares, confortável e com espaço suficiente para o grupo e bagagem. Ao volante, contamos com o Ernesto. Uma figura carismática que tem todo o prazer em partilhar do seu vasto conhecimento do território e acompanhará desde o aeroporto à chegada, até à partida. Em momentos específicos, usaremos transportes locais, como barcos, em sítios que o acesso só isso permite.")
Faq.create(trip_id: guatemala.id, question:"Como é o clima durante a viagem?", answer:"A América Central caracteriza-se por temperaturas amenas e agradáveis. Contudo, exploramos um território bastante vasto e diverso, Conta, com alguma variação térmica: mínimas a rondar os 10ºC e máximas acima dos 30ºC. A maioria dos dias serão solarengos e de gloriosos céus azuis, mas estamos numa região tropical, portanto prepara-te para possíveis aguaceiros fortes.")
Faq.create(trip_id: guatemala.id, question:"Esta viagem exige cuidados de saúde especiais?", answer:"Recomenda-se a <a href='https://www.consultadoviajante.com'>Consulta do Viajante em Telemedicina</a>. A consulta deverá ser feita com um mínimo de um mês da data de partida para a viagem.")

Include.create(trip_id: amazónia.id, location: "MANAUS", included:"Transporte, hospedagem com pequeno almoço, dois almoços (dias 2 e 3) e passeios.", nonincluded:"Jantares dos dias 1, 2 e 3, nem o almoço do dia 1.")
Include.create(trip_id: amazónia.id, location: "COMUNIDADES", included:"Transporte, hospedagem, toda a alimentação1 e passeios.", nonincluded:"Bebidas alcoólicas.")
Include.create(trip_id: amazónia.id, location: "PRESIDENTE FIGUEIREDO", included:"Transporte, hospedagem, alimentação e passeios.", nonincluded:"Jantares.")

Include.create(trip_id: guatemala.id, location: "", included:"Guia, Transporte, hospedagem e pequeno-almoço (excepto dia 11 e 12).", nonincluded:"Entrada nos parques turisticos e refeições.")

Page.create(name: "presentation", content:"Propomos que abandonem, temporariamente, o vosso lugar de rotina e conforto, e explorem realidades que só quando presenciadas são realmente entendidas. Acrescentam Mundo. Deixem-se levar pela curiosidade, como só viajar permite.

Estes lugares, foram das viagens que mais impacto tiveram em nós. São destinos que nos dizem muito e que queremos partilhar com todos os que gostam de viajar e descobrir.

Temos viagens em grupo, mas também temos “viagens à medida” onde podem agendar connosco definindo quando e com que companhia: família, crianças, amigos, tragam quem quiserem. Mas venham. As nossas viagens são para todas as idades.")
Page.create(name: "about", content:"A Sara Biscaia e o Zé Castro Caldas, ambos gostam de viajar e preparam em Portugal esta possibilidade de levar outros viajantes a dois sitios com os quais criaram uma rede de contactos e acima de tudo Amizades, de forma a visitar cada um desses sitios a partir do acompanhamento de quem lá habita, são eles quem nos guiam, mostram e partilham as suas histórias. Porque não há quem conheça um determinado contexto como quem nele vive.
    Os locais que visitamos serão sempre dentro de um registo em turismo de pequena escala, em que o impacto de quem os visita é essencial na dinamização directa na economia local ao dar prioridade e envolver pequenos negócios e as comunidades das zonas onde vamos estar.")
Page.create(name: "contact", content:"FACEBOOK
INSTAGRAM
CAIPORA@CAIPORA.COM
+351 91 876 654 432
LISBOA
PORTUGAL")
Page.create(name: "privacy", content:"Quando acede às páginas do site da CAIPORA (posteriormente também terá o nome oficial da empresa), está a aceitar os termos aqui expostos. 

    Todos os direitos de autor, copyright, marca registada e outros aplicáveis ou utilizados no presente site são pertença de CAIPORA e estão protegidos por direitos de autor. Todos os direitos que não sejam expressamente concedidos pelo presente conteúdo são direitos reservados. 
    
    O presente site é para uso pessoal e não comercial do utilizador. É proibida a cópia, alteração, distribuição, transmissão, exibição, reprodução, publicação, transferência ou venda de quaisquer informações, produtos ou serviços obtidos através do presente site. 
    
    Em caso algum a CAIPORA poderá ser responsabilizada, direta ou indiretamente, por qualquer dano resultante ou de qualquer forma relacionado com o uso do presente site. 
    
    A CAIPORA não garante que as suas páginas do site não serão interrompidas ou que não terão erros. 
    
    A CAIPORA reserva-se ao direito de inserir, alterar e remover, sem aviso prévio e seja qual for a causa, qualquer informação presente no site. O utilizador é responsável por rever o conteúdo sempre que consultar ou reservar viagens através do mesmo. O uso continuado do site posteriormente a quaisquer alterações introduzidas pela CAIPORA será considerado como aceitação tácita das mesmas. 
    
    Para facilitar a sua acessibilidade, a CAIPORA pode incluir links para sites na internet que sejam detidos ou operados por terceiros. Quando utilizar os links para esses sites de terceiros, deverá rever e aceitar as regras desse site antes de o utilizar. Também deverá aceitar que a CAIPORA não controla o conteúdo desse site e não pode assumir qualquer responsabilidade pelos materiais criados ou publicados por esses sites de terceiros. Para além disso, um link para um site que não seja da a CAIPORA não significa que a CAIPORA apoie o site ou os produtos e serviços aí referenciados. 
    
    A recolha de dados de identificação do utilizador poderá ser efetuada via internet (no próprio site), telefone ou outros e serão processados automaticamente, nos termos aprovados pela Comissão Nacional de Proteção de Dados. Toda a recolha de dados operará de acordo com as normais regras de segurança. 
    
    Nenhuma entidade externa à CAIPORA tem acesso ou pode consultar estes dados. 
    
    O utilizador aceita que a CAIPORA forneça a terceiros informação relativa a hábitos, usos e costumes dos clientes enquanto grupo, não incluindo a identidade ou características de qualquer utilizador em particular. 
    
    O utilizador, enquanto cliente inscrito numa viagem, dá expresso consentimento para que toda a informação, incluindo dados pessoais, fornecida em relação à sua viagem possa ser transmitida a autoridades governamentais para efeitos de controlo de fronteiras e de segurança nas viagens aéreas. 
    
    O utilizador, enquanto cliente inscrito numa viagem, dá expresso consentimento para que toda a informação, incluindo dados pessoais, fornecida em relação à sua viagem possa ser transmitida a parceiros locais da CAIPORA de modo a poder realizar o programa de viagem, incluindo gostos, preferências alimentares, informações particulares de saúde ou outros. 
    
    Todos os dados recolhidos através do registo no site são inteiramente confidenciais e destinam-se à gestão de clientes e serviços da CAIPORA, bem como a acções de marketing desta mesma empresa, ou para informar os seus clientes de alterações de funcionalidades do site ou do funcionamento da mesma. Assim, todos os dados do seu registo são inteiramente confidenciais e serão utilizados exclusivamente para lhe fazer chegar as nossas novidades, prestar-lhe o melhor serviço e dar-lhe a conhecer viagens que se adaptem aos seus interesses. 
    ")
Page.create(name: "terms", content:"    OBJETO E ORGANIZAÇÃO
    Os presentes Termos e Condições contratuais destinam-se a estabelecer os termos e condições por que se regerá a prestação dos serviços de viagens organizadas pela CAIPORA, sociedade com sede (futura informação), com Capital Social de € x, matriculada na Conservatória do Registo Comercial de X com o número único de matrícula e de pessoa colectiva x, RNAVT No Registo x, entre a Agência e o Cliente.
    A organização das viagens é da responsabilidade da agência de viagens CAIPORA, referida nestes Termos e Condições dessa forma ou por Agência.
    Os presentes Termos e Condições de participação são complementados pelo programa de viagem em que o Cliente se inscreve, que constitui as condições particulares de participação na viagem.
    Ao contratar com a Agência o Cliente reconhece e aceita todos os termos e condições estabelecidos.
 
    RESPONSABILIDADE 
    A responsabilidade da Agência encontra-se garantida por um seguro de responsabilidade civil na companhia de seguros X e pelo Fundo de Garantia de Viagens e Turismo do Turismo de Portugal, nos termos da legislação em vigor. 

    INSCRIÇÕES E PAGAMENTOS 
    A inscrição do Cliente e seus acompanhantes só será válida após pagamento total ou de 30% do valor da viagem e o preenchimento do formulário constante do site da Agência. O cliente obriga-se a liquidar o saldo do custo da viagem, incluindo serviços adicionais que solicite, até 60 dias da data da partida. Se a inscrição tiver lugar a 60 dias ou menos da data do início da viagem, o preço total da mesma deverá ser pago no ato da inscrição, ficando esta condicionada à confirmação das reservas para todos os serviços. A CAIPORA reserva-se ao direito de anular qualquer inscrição cujo pagamento não tenha sido efetuado nas condições acima mencionadas. 
    Ao inscrever-se o Cliente assume vários compromissos perante a CAIPORA:
    ― De ter tomado conhecimento e aceite os presentes Termos e Condições de participação, bem como o programa de viagem em que o Cliente se inscreve, que constitui as condições particulares de participação na viagem.
    ― Que se encontra em condições de saúde adequadas à viagem em que se inscreve e aceita a natureza da mesma viagem, nomeadamente os riscos decorrentes da impossibilidade de acesso imediato a assistência médica.
    ― Que se encontra consciente do tipo de exigências físicas, culturais e psicológicas que a viagem poderá envolver e que poderão levar a situações imprevistas. 

    ALOJAMENTO
    A CAIPORA tem como alojamento previsto para as suas viagens quartos de duas pessoas. Nalguns casos, quando mencionado no programa da viagem, o alojamento poderá ser em quartos triplos ou de mais pessoas, camaratas, tendas de campismo, camas em cabines de comboio ou outros. 
    A CAIPORA agrupará em pares (ou em outro número se o alojamento não for de duas pessoas), por sexo, os clientes que se inscreverem individualmente para a mesma viagem. Nalgumas viagens, pelas características de cada alojamento, a separação por género poderá não ser possível. 

    DOCUMENTAÇÃO
    É da responsabilidade do cliente toda e qualquer documentação pessoal ou familiar (bilhete de identidade, cartão de cidadão, passaporte, documentação militar, autorização para menores, vistos, certificado de vacinas e outros eventualmente exigidos) necessária para a viagem. A Agência declina qualquer responsabilidade pela recusa de concessão de vistos ou a não permissão de entrada ao Cliente em país estrangeiro; nestes casos aplicam-se as condições estabelecidas na cláusula “Desistências”, sendo ainda da conta do cliente todo e qualquer custo que tal situação acarrete. 

    USO DE INFORMAÇÃO DO CLIENTE 
    O cliente dá expresso consentimento para que toda a informação, incluindo dados pessoais, fornecida em relação à sua viagem possa ser transmitida a autoridades governamentais para efeitos de controlo de fronteiras e de segurança nas viagens aéreas ou outras. 
    O cliente dá expresso consentimento para que toda a informação, incluindo dados pessoais, fornecida em relação à sua viagem possa ser transmitida a parceiros locais da CAIPORA de modo a poder realizar o programa de viagem, incluindo gostos, preferências alimentares, informações particulares de saúde ou outros. 
    A CAIPORA efectuará os contactos necessários com o cliente, de forma a garantir o bom funcionamento do serviço. 

    LOCAL DE ENCONTRO E INÍCIO DAS VIAGENS
    O local de encontro do Cliente, seus acompanhantes em cada viagem com o guia ou líder de viagem e com os restantes participantes está indicado em cada programa de viagem. O lugar específico será comunicado ao Cliente de forma atempada antes do início da viagem. 
    É da responsabilidade do Cliente adquirir as viagens de avião, ou outro meio de transporte, que o leve, e aos seus acompanhantes, ao local onde se inicia a viagem. 
    É também da responsabilidade do Cliente estar no ponto de encontro no horário indicado para o início da viagem. 

    LÍNGUA FALADA DURANTE AS VIAGENS
    As viagens da CAIPORA, salvo raras exceções, realizam-se com grupos apenas de Clientes portugueses ou não-portugueses, falam português e estão integrados culturalmente na sociedade portuguesa. É condição fundamental que o Cliente fale a língua portuguesa para poder participar numa das viagens. 

    MUDANÇAS DE DATAS
    O Cliente inscrito numa viagem não poderá mudar a sua inscrição para outra viagem ou para a mesma viagem com partida em data diferente sem o expresso consentimento da CAIPORA. Caso seja possível efetuar tal alteração, esta pode estar sujeita a despesas e encargos previstos na rubrica “Desistências”. 

    CESSÃO DA INSCRIÇÃO
    O Cliente pode ceder a sua inscrição, fazendo-se substituir por outra pessoa que preencha todas as condições requeridas para a viagem, desde que informe a Agência com, pelo menos, 60 dias de antecedência da data de partida e que os diferentes fornecedores dos serviços da viagem aceitem a substituição, sob pena
de ser considerado que o cliente desistiu da viagem. Se o cliente pretender ceder a sua inscrição a uma pessoa de sexo diferente, poderá estar sujeito ao pagamento do suplemento de alojamento individual da viagem ou a um custo da mesma natureza se esse não estiver previsto para a viagem em que se inscreveu, no caso de não ser possível agrupar o novo participante com outra pessoa do mesmo sexo. 
    A cessão da inscrição responsabiliza solidariamente cedente e cessionário pelo pagamento do preço da viagem e pelos encargos adicionais originados. 

    ALTERAÇÕES
    Sempre que existam razões alheias que o justifiquem, a Agência poderá alterar a ordem dos percursos, modificar as horas de partida ou substituir qualquer dos alojamentos ou transportes previstos por outros de categoria e localização similar. 

    MÍNIMO DE PARTICIPANTES E CANCELAMENTO DO PROGRAMA PELA AGÊNCIA
    O programa de viagem fixará, caso a caso, o número mínimo de participantes. Caso não seja atingido o número mínimo de participantes fixado, a Agência poderá  cancelar a viagem e informará o cliente por escrito do cancelamento até 15 dias antes da data de partida, reembolsando o Cliente de todas as quantias pagas, ficando a Agência exonerada de qualquer responsabilidade pelo cancelamento. 

    DESISTÊNCIAS
    Se o Cliente ou algum dos seus acompanhantes desistir da viagem até 60 dias antes da data de início do programa da viagem, perderá 30% do valor do programa, que foi entregue pelo cliente à Agência sob a condição de sinal não reembolsável. Caso essa desistência se verifique a 60 ou menos dias da data de início do programa, perderá o valor total do programa da viagem. O Cliente perderá também o valor de serviços adicionais que tenham sido por si pedidos e que tenham encargos não recuperáveis. 

    REEMBOLSOS
    Depois de iniciada a viagem não é devido qualquer reembolso por serviços não utilizados pelo Cliente. A não prestação de serviços previstos no programa de viagem por causas não imputáveis à Agência e caso não seja possível a substituição por outros equivalentes, confere ao Cliente o direito a ser reembolsado pela diferença entre o preço dos serviços previstos e o dos efetivamente prestados. 

    ALTERAÇÕES DE PREÇOS
    Os preços constantes da programação estão baseados nos custos dos serviços e taxas de câmbio vigentes à data de programação, pelo que podem estar sujeitos a alterações que resultem das variações no custo dos transportes ou do combustível, de direitos, impostos, taxas e flutuações cambiais. 
    Sempre que se verifique uma alteração ao preço da viagem, o Cliente será imediatamente informado e convidado a, dentro do prazo que lhe for fixado, aceitar o aumento verificado ou anular a sua inscrição nos mesmos termos e condições que os previstos na rubrica 'Impossibilidade de cumprimento'. 

    IVA
    Todos os preços indicados no site da Agência refletem já o Imposto de Valor Acrescentado à taxa vigente. 

    SEGUROS
    O Cliente obriga-se a adquirir um seguro de viagem, podendo este ser ou não adquirido à CAIPORA. O seguro deve estar ajustado ao período de duração da sua viagem, destino e tipo de atividades. Não subscrevendo um seguro de viagem ou adquirindo um seguro de viagem desadequado, o Cliente isenta automaticamente a CAIPORA e todos os seus parceiros prestadores de serviços de toda e qualquer responsabilidade relativa aos riscos e consequentes custos em que o Cliente incorre por não ter realizado a proteção que lhe foi recomendada. 
    Quando o Cliente adquire um seguro de viagem à CAIPORA, este seguro, no clausulado referente a Cancelamento Antecipado da Viagem e a Interrupção da Viagem, o reembolso que possa vir a ser efetuado pela companhia de seguros aplica- se apenas aos serviços adquiridas à CAIPORA. Ficam excluídos serviços que o Cliente tenha comprado a terceiros. 

    RECLAMAÇÕES
    Somente poderão ser consideradas reclamações desde que apresentadas por escrito num prazo não superior a 20 dias após o termo da prestação dos serviços. As mesmas só poderão ser aceites desde que tenham sido participadas aos fornecedores dos serviços (hotéis, guias, agentes locais, etc.) durante o decurso da viagem ou estada, exigindo dos mesmos os respetivos documentos comprovativos da ocorrência. 
    Qualquer conflito emergente do presente contrato de prestação de serviços será dirimido pelo Tribunal Judicial da Comarca de Lisboa, com expressa renúncia a qualquer outro e para todas as questões não reguladas por estes Termos e Condições de Participação, aplicar-se-á a Lei Portuguesa. 

    BAGAGEM
    A Agência não se responsabiliza, em caso algum, pela bagagem e demais haveres que o Cliente e seus acompanhantes transportem consigo, seja qual for o local ou meio de transporte usado. Recomenda-se ao Cliente a contratação de seguro de bagagem e a sua presença nas operações de carga e descarga da mesma. Em caso de subtracção, deterioração ou destruição da bagagem, o Cliente e seus acompanhantes deverão reclamar de imediato, por escrito, junto da entidade prestadora de serviços e/ou entidade à guarda de quem os mesmos se encontravam depositados, conservando uma cópia da reclamação. A responsabilidade da Agência só poderá
ser accionada mediante a apresentação de comprovativo de reclamação prevista no parágrafo anterior. 

    NOTA
    Os presentes Termos e Condições são complementados pelo programa da viagem em que o Cliente e seus acompanhantes se inscrevem, que constitui as condições particulares de participação na viagem. Podem ainda ser complementadas por quaisquer outras condições específicas enviadas ao Cliente no ato da inscrição ou quaisquer outras desde que devidamente acordadas pelas partes. ")
