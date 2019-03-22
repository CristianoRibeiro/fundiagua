-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 20/03/2019 às 17:35
-- Versão do servidor: 5.5.62-cll
-- Versão do PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `midia081_cms`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'testedsadsad', 'tesaetr', 'testedsadsad', 2, '2018-11-22 20:14:08', '2018-11-22 20:46:34'),
(2, 'Nova categoria', 'nova', 'nova-categoria', 1, '2018-11-22 20:31:00', '2018-11-22 20:31:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_post`
--

CREATE TABLE `category_post` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `category_post`
--

INSERT INTO `category_post` (`category_id`, `post_id`) VALUES
(1, 8),
(2, 8),
(2, 9),
(1, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=publico,2=restrito,3=conselheiro',
  `mediable_id` int(11) DEFAULT NULL,
  `mediable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `media`
--

INSERT INTO `media` (`id`, `user_id`, `name`, `file_name`, `subtitle`, `mime_type`, `disk`, `size`, `path`, `access_level`, `mediable_id`, `mediable_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'viMuSs6piu5eY6ndOx1x84Wgyb0TGxOTqRYULuV9.png', 'viMuSs6piu5eY6ndOx1x84Wgyb0TGxOTqRYULuV9', 'fasdasdasd', 'image/png', 'storage', 149907, '/storage/uploads/2018-11-29/viMuSs6piu5eY6ndOx1x84Wgyb0TGxOTqRYULuV9.png', '1', NULL, NULL, '2018-11-29 17:15:48', '2018-12-03 14:11:26', '2018-12-03 14:11:26'),
(2, 1, 'jOxeVuFAPJ5UDShu78K8Dx1gTwo7op19APOEycRT.png', 'jOxeVuFAPJ5UDShu78K8Dx1gTwo7op19APOEycRT', NULL, 'image/png', 'storage', 129031, '/storage/uploads/2018-11-29/jOxeVuFAPJ5UDShu78K8Dx1gTwo7op19APOEycRT.png', '1', NULL, NULL, '2018-11-29 17:15:51', '2018-11-29 17:15:51', NULL),
(3, 1, 'hIiHvLVCq8QegQazgFfRtW2tFCgKldnfQwyDacYO.png', 'hIiHvLVCq8QegQazgFfRtW2tFCgKldnfQwyDacYO', 'dsadsda', 'image/png', 'storage', 142904, '/storage/uploads/2018-11-29/hIiHvLVCq8QegQazgFfRtW2tFCgKldnfQwyDacYO.png', '1', NULL, NULL, '2018-11-29 17:15:51', '2018-11-30 21:18:09', NULL),
(4, 2, 'dLaUxsvZManlFQOu8tOb4HOVesFOby6L5e4bTJrg.jpeg', '41335675_l', 'dsadsda', 'image/jpeg', 'storage', 552365, '/storage/uploads/2018-11-29/dLaUxsvZManlFQOu8tOb4HOVesFOby6L5e4bTJrg.jpeg', '1', NULL, NULL, '2018-11-29 17:29:32', '2018-12-03 14:08:29', '2018-12-03 14:08:29'),
(5, 2, 'GnX1T4a98wV7MxRyKcv9A7QO1DmAyJCYtdU5U3Vq.pdf', 'Cards · Bootstrap', NULL, 'application/pdf', 'storage', 165186, '/storage/uploads/2018-11-29/GnX1T4a98wV7MxRyKcv9A7QO1DmAyJCYtdU5U3Vq.pdf', '1', NULL, NULL, '2018-11-29 20:11:45', '2018-11-29 20:11:45', NULL),
(7, 2, 'KzPQRl70JhSNPYulVZzBeMZUh4Tqw7JiF24gkRAh.zip', 'Layer 151', 'dsadsdadsadasdasdad', 'application/zip', 'storage', 166994, '/storage/uploads/2018-11-30/KzPQRl70JhSNPYulVZzBeMZUh4Tqw7JiF24gkRAh.zip', '1', NULL, NULL, '2018-11-30 14:34:16', '2018-11-30 21:18:27', NULL),
(8, 2, '0jW5FslhSGdw0FVOst2jJ6ZrzJWHtflU994BPRH3.docx', 'Webservice API Specification Doc Template', 'dsadsda', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'storage', 18050, '/storage/uploads/2018-11-30/0jW5FslhSGdw0FVOst2jJ6ZrzJWHtflU994BPRH3.docx', '1', NULL, NULL, '2018-11-30 14:36:14', '2018-11-30 21:18:09', NULL),
(9, 2, 'gRKOKjMm1ozRgwTk0KyQi5YG7I4C09f00LliqVgJ.png', 'judo', 'fasdasdasd', 'image/png', 'storage', 2014100, '/storage/uploads/2018-11-30/gRKOKjMm1ozRgwTk0KyQi5YG7I4C09f00LliqVgJ.png', '1', NULL, NULL, '2018-11-30 16:36:47', '2018-11-30 21:49:56', NULL),
(10, 1, 'WhY1j7V2tNrW4rFsCh5CGcZaFFbx7t2US8BHq4Rk.jpeg', '41335675_l', NULL, 'image/jpeg', 'storage', 552365, '/storage/uploads/2018-11-30/WhY1j7V2tNrW4rFsCh5CGcZaFFbx7t2US8BHq4Rk.jpeg', '1', NULL, NULL, '2018-11-30 16:40:55', '2018-12-03 14:10:12', '2018-12-03 14:10:12'),
(11, 2, 'TEHwutFm6Ln5toz72d0vADQ9mwNJwWFWzmz6UdgK.gif', 'loading', NULL, 'image/gif', 'storage', 6792, '/storage/uploads/2018-12-03/TEHwutFm6Ln5toz72d0vADQ9mwNJwWFWzmz6UdgK.gif', '1', NULL, NULL, '2018-12-03 14:18:55', '2018-12-03 14:19:38', '2018-12-03 14:19:38'),
(12, 2, 'd2qMV2Oek4UFaSCMUSkrZgwEhB2myPGWW6OHp9NR.txt', 'googlef007f1dd27e24355', NULL, 'text/plain', 'storage', 53, '/storage/uploads/2018-12-03/d2qMV2Oek4UFaSCMUSkrZgwEhB2myPGWW6OHp9NR.txt', '3', NULL, NULL, '2018-12-03 14:23:33', '2018-12-03 14:24:45', '2018-12-03 14:24:45'),
(13, 2, 'lbcsVsaJLNub0jZVj8RDt9kwCDibkQKZsW4AxcBG.png', '01', NULL, 'image/png', 'storage', 447245, '/storage/uploads/2018-12-03/lbcsVsaJLNub0jZVj8RDt9kwCDibkQKZsW4AxcBG.png', '1', NULL, NULL, '2018-12-03 14:31:36', '2018-12-03 14:31:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(12, '2018_11_19_203305_create_post_table', 3),
(11, '2018_11_19_125350_alter_table_user', 2),
(13, '2018_11_20_132454_alter_table_posts', 4),
(14, '2018_11_21_160254_alter_table_posts', 5),
(15, '2018_11_21_170857_alter_table_posts', 6),
(16, '2018_11_22_172802_create_categories_table', 7),
(19, '2018_11_22_174220_create_category_post_table', 8),
(20, '2018_11_23_142446_create_media_table', 9),
(21, '2018_11_30_134950_alter_media_table', 10),
(23, '2018_11_30_185836_alter_media_table', 11),
(24, '2018_12_03_125207_create_pages_table', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `pages`
--

INSERT INTO `pages` (`id`, `user_id`, `title`, `body`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'INSTITUCIONAL', '<div class=\"content container\" style=\"padding: 0px; margin-top: 10px; margin-bottom: 10px; width: 1170px; height: auto; min-height: 400px; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 10px; background-color: rgb(238, 238, 238);\"><div style=\"padding: 0px; margin: 12px 0px 0px; font-family: Arial; font-size: 12px;\"><div style=\"padding: 0px; margin: 0px;\"><div style=\"padding: 0px; margin: 0px 0px 0px 200px; width: 720px; color: rgb(0, 69, 100); font-family: &quot;segoe ui&quot;; text-align: justify; font-size: 16px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A FUNDIÁGUA&nbsp;</h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">FUNDIÁGUA – Fundação de Previdência Complementar -</strong>&nbsp;É uma Entidade Fechada de Previdência Complementar, instituída e patrocinada pela&nbsp;<strong style=\"padding: 0px; margin: 0px;\">CAESB - Companhia de Saneamento Ambiental do Distrito Federal e pela própria FUNDIÁGUA,&nbsp;classificada como&nbsp;</strong>&nbsp;Pessoa jurídica de direito privado, sem fins lucrativos, que tem por objetivo principal, criar, executar e operar planos de benefícios previdenciários e assistenciais.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Graças à dedicação dos profissionais que a compõem, a Fundação atende hoje aproximadamente 9.500 pessoas entre Participantes e dependentes.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A FUNDIÁGUA administra três Planos Previdenciários: o&nbsp;Plano I&nbsp;- Benefício Definido (BD), o&nbsp;Plano II&nbsp;- Benefícios Saldado (BS) e o&nbsp;Plano III&nbsp;- Contribuição Definida (CD), com cerca de 3500 Participantes. Desse total, mais de 1000 já estão recebendo benefício.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Na Área Assistencial, merecem destaque à gestão dos Planos de Saúde, Odontológico e Programa Farmácia, onde os usuários têm a segurança de uma parceria efetiva em todas as fases de suas vidas.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Os esforços da FUNDIÁGUA estão direcionados para atingir níveis crescentes de qualidade e de máxima satisfação no atendimento&nbsp; dos seus participantes,&nbsp; dependentes e patrocinadoras.</p><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">MISSÃO E VISÃO&nbsp;</h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A aposentadoria digna a seu alcance</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">•MISSÃO -</strong>&nbsp;Assegurar suplementação de aposentadoria aos seus participantes e beneficiários, propiciando melhor qualidade de vida.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">•VISÃO -</strong>&nbsp;Ser reconhecida pela excelência do modelo de gestão.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">•VALORES -</strong>&nbsp;Ética, Transparência, Eqüidade e Credibilidade.</p><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">HISTÓRIAS DE SUCESSO</h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A FUNDIÁGUA foi concebida quando a inflação era um monstro que assustava o país. A desvalorização da moeda brasileira atingiu a média de 43% ao mês&nbsp;- hoje quase inacreditável&nbsp;- no primeiro semestre de 1994, o primeiro ano de funcionamento da Entidade.&nbsp; Naquele cenário turbulento, a CAESB&nbsp;propôs o planejamento de longo prazo para a aposentadoria&nbsp;dos seus empregados. Embora as atenções fossem voltadas para a sobrevivência em curto prazo, a questão da previdência começava a preocupar os caesbianos.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A criação da FUNDIÁGUA foi anunciada em carta assinada pelo presidente da CAESB. Em março de 1994, o convite à adesão foi aceito por 82% dos participantes.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">O plano inicialmente desenvolvido na modalidade de BD – Benefício Definido passou por processo de amadurecimento, com sucessivas mudanças para melhor. Também se aperfeiçoou a legislação do segmento e as práticas de todo o mercado de previdência complementar.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">A gestão transparente e os investimentos conservadores e rentáveis conquistaram a confiança dos participantes. A FUNDIÁGUA consolidou-se como sua melhor opção para a conquista de uma aposentadoria digna.</p><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Os fatos que marcaram a história da FUNDIÁGUA</h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">1993 -</strong>&nbsp;Em dezembro, o presidente da CAESB, anuncia a aprovação da FUNDIÁGUA pela SPC – Secretaria da Previdência Complementar, através da Portaria MPAS n° 730, de 16/12/1993.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">1994 -</strong>&nbsp;Em abril, iniciam-se as atividades e os depósitos de 82% dos funcionários que se filiaram ao plano.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">1995 –</strong>&nbsp;A fundação promove a 1ª alteração de Regulamento, adequando as condições estabelecidas no resultado da reavaliação atuarial de 1994 e em agosto devolve aos participantes ativos a título de excedente de contribuição a diferença em relação à composição do SRC – Salário Real de Contribuição.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">1996 -</strong>&nbsp;As contribuições para planos de previdência privada passam a ser dedutíveis da renda bruta para o cálculo do imposto de renda. É criado o Comitê de Investimentos.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">1999 -</strong>&nbsp;A FUNDIÁGUA passa a administrar o Plano de Saúde da CAESB, na modalidade de co-gestão, através da contratação de operadora de Plano de Saúde.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2000 -</strong>A FUNDIÁGUA passa a administrar o Seguro de Vida dos empregados da CAESB.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2002 –</strong>&nbsp;Em atendimento a Resolução nº 11/2002 do CGPC – Conselho de Gestão da Previdência Complementar foi alterada a Tábua de Mortalidade passando da CSO-58, a qual vinha sendo utilizada pela fundação desde sua criação para AT-49.&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2003 –</strong>&nbsp; Ocorre a comemoração dos 10 anos de criação da FUNDIÁGUA, que contou com a presença dos participantes e dos presidentes da CAESB, FUNDIÁGUA, SINDÁGUA, CAESO&nbsp; e ASAP.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2004 –</strong>&nbsp;Em agosto é encaminhado a SPC,&nbsp; para aprovação&nbsp; os novos regulamentos da FUNDIÁGUA.&nbsp;&nbsp;</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2005 –</strong>&nbsp;Em outubro e aprovado pela SPC os novos&nbsp;Regulamentos da FUNDIÁGUA incorporando vantagens como a portabilidade e o benefício proporcional diferido. E formalizado pela CAESB, contrato de confissão de dívida referente a cobertura do \"serviço passado\" cumprindo&nbsp;o compromisso de reconhecimento junto aos participantes fundadores do Plano I de&nbsp;garantir o tempo de trabalho anterior à criação do plano. Já ajustados ao atendimento da Resolução nº 18/2006 do CGPC – Conselho de Gestão da Previdência Complementar solicitando a alteração da Tábua de Mortalidade AT-49 para AT-83.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2006 -</strong>&nbsp;Entra em vigor os novos Planos de Benefício da fundação com aprovação da FUNDIÁGUA empresa como patrocinadora.&nbsp; Os participantes do Plano III ganham a opção de aposentadoria com reajuste mensal pelo rendimento das aplicações, e não somente anual pela inflação, conforme ocorre nos demais Planos I e II.</p><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2007 -</strong>&nbsp;Lançamento conjunto&nbsp;do&nbsp; novo site&nbsp; e do&nbsp;Código de Ética da fundação, instrumentos para uma&nbsp;gestão moderna e transparente.&nbsp;<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2008 -</strong>&nbsp;Desenvolvemos estudos para captação da NOVACAP como nova patrocinadora da Fundiágua, sendo oferecido aos seus colaboradores um Plano de Previdência (Plano IV) estruturado na modalidade de CD - Contribuição Definida, a exemplo do Plano III da CAESB.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2010 -</strong>&nbsp;O Patrimônio da Fundiágua supera os 500 Milhões de Reais, com a administração dos 3 Planos Previdenciários. A Fundiágua realiza a 1ª Audiência Pública de sua Política de Investimentos.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2011 -</strong>&nbsp;Após realização de reuniões setoriais é aprovada pelos participantes, a troca do Plano de Saúde, que passou a ser administrado pela Bradesco Saúde. O Estatuto da Fundação é alterado, prevendo, dentre outras, a possibilidade de atuação com multipatrocínio e a eleição para diretor de seguridade.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2012 -</strong>&nbsp;Retorno do processo eleitoral para definição do Diretor de Seguridade, quando foi eleito o Sr. Elton Gonçalves. É implantado o Planejamento Estratégico da Fundiágua. É aprovado pela PREVIC o Educa Mais - Programa de Educação Financeira e Previdenciária. A Fundiágua realizou 24 Encontros Previdenciários com seus participantes. A Fundiágua adequou a meta atuarial dos Planos I e II para 5%.<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2013 -</strong>&nbsp;A Fundiágua implementa as ações do Educa Mais, com destaque para o treinamento de 80 Multiplicadores da Fundiágua.&nbsp;<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2014</strong>&nbsp;- A Fundiágua completa 20 anos de atividade. É renovada a sua Diretoria, que passa a ter como Presidente o Sr. Rodolfo Sales e como Diretor Financeiro o Sr. Jânio Barbosa. É realizado o primeiro Curso Preparatório para Certificação ICSS, com duração de 120 horas, concluído por 38 participantes (Conselheiros, Multiplicadores, Diretores e Empregados da Fundação).<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\">2015</strong>&nbsp;- A Fundiágua contrata a Empresa de Consultoria JCMB para elaborar o Modelo Proprietário de Risco e Conformidade, o primeiro mapeamento de riscos da Fundação e a proposta de alteração do organograma para adaptá-lo à Cultura de Riscos. O Conselho Deliberativo em sua 135ª Reunião Extraordinária aprova as alterações da estrutura organizacional e autoriza a implantação da Ascon - Assessoria de Risco e Conformidade, que passou a funcionar a partir de primeiro de julho, ocasião em que as atividades de controle dos investimentos (a cargo da Ascon) foram segregadas das atividades de administração de investimentos (a cargo da Geinv - Gerência de Investimentos).<br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"></p></div><h1 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-family: &quot;Segoe UI&quot;; font-size: 32px; color: rgb(36, 64, 97);\">ESTRUTURA E GESTÃO</span></h1><div style=\"padding: 0px; margin: 0px;\"><div style=\"padding: 0px; margin: 0px 0px 0px 200px; width: 720px; font-size: 10px; color: rgb(0, 69, 100);\"><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\">CONSELHO DELIBERATIVO</span></h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">O Conselho Deliberativo&nbsp; é o órgão de deliberação e orientação superior da FUNDIÁGUA, cabendo-lhe fixar as diretrizes gerais e normas da política de benefícios previdenciários, de serviços de saúde, econômico-financeiro e administrativa.</span></p><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><br style=\"padding: 0px; margin: 0px;\"></span><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Composto por&nbsp; 6 (seis) membros efetivos e seus suplentes, conforme estatuto. A Caesb indicará 3 (três) membros efetivos e&nbsp;3 (três) serão eleitos pelos participantes ativos e assistidos.</span></p><br style=\"padding: 0px; margin: 0px;\"><table cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#004564\" border=\"1\" style=\"padding: 0px; margin: 0px; font-family: &quot;segoe ui&quot;; width: 885.4px; height: 346px; left: 173px;\"><tbody style=\"padding: 0px; margin: 0px;\"><tr bgcolor=\"#004564\" height=\"10px\" style=\"padding: 0px; margin: 0px;\"><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px; color: rgb(255, 255, 255);\">EFETIVOS</span></td><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px; color: rgb(255, 255, 255);\">SUPLENTES</span></td><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 14px; color: rgb(255, 255, 255);\">MANDATO</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\"><strong style=\"padding: 0px; margin: 0px;\">Iracy Cecílio de Araújo Júnior - Presidente</strong></span></td><td style=\"padding: 0px; margin: 0px;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Luiza Carneiro Brasil</span></strong></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\"><strong style=\"padding: 0px; margin: 0px;\">26/03/2016 a 25/03/2020</strong></span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 16px;\">Maxwell Simes Souza Paiva</span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 16px;\">Geraldo Donizeth Cruz Silva</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"></span><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 16px;\">26/03/2018 a 25/03/2022</span></p></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">André Luis Cirqueira de Freitas&nbsp;</span><br style=\"padding: 0px; margin: 0px;\"></span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><br style=\"padding: 0px; margin: 0px;\"></span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/10/2018 a 25/03/2022</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Jeferson Rodrigo Justino Pereira Lima</span></td><td style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Irlan Costa Santos - 1º Suplente</span></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Maria Cristina Coimbra Marodim - 2º Suplente</span></p></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2018 a 25/03/2022</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Tiago Pinto da Trindade</span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><br style=\"padding: 0px; margin: 0px;\"></span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">26/03/2016 a 25/03/2020</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">João Marcos Paes de Almeida</span></td><td style=\"padding: 0px; margin: 0px;\">&nbsp;</td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2016 a 25/03/2020</span></td></tr></tbody></table><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\">CONSELHO FISCAL</span></h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Compete ao Conselho Fiscal, principalmente, examinar e aprovar os balancetes da fundação, emitir parecer sobre o balanço anual, examinar os livros e documentos da entidade.</span></p><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><br style=\"padding: 0px; margin: 0px;\"></span><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Composto por&nbsp; 4 (quatro) membros efetivos e seus suplentes, conforme estatuto. Dos membros efetivos, 2 (dois) serão indicados pela Caesb e 2 (dois)&nbsp;serão eleitos pelos participantes ativos e assistidos.</span></p><br style=\"padding: 0px; margin: 0px;\"><table cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#004564\" border=\"1\" style=\"padding: 0px; margin: 0px; font-family: &quot;segoe ui&quot;; width: 821.6px; height: 266px;\"><tbody style=\"padding: 0px; margin: 0px;\"><tr bgcolor=\"#004564\" height=\"10px\" style=\"padding: 0px; margin: 0px;\"><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; color: rgb(255, 255, 255);\">EFETIVOS</span></td><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; color: rgb(255, 255, 255);\">SUPLENTES</span></td><td align=\"center\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; color: rgb(255, 255, 255);\">MANDATO</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><strong style=\"padding: 0px; margin: 0px;\">Esdras Bacelar Moreira Salles -Presidente</strong></span></td><td style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Ricardo Mafra e Silva - 1º Suplente</span></strong></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Luiz Sérgio Miranda Lopes - 2º Suplente</span></strong></p></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><strong style=\"padding: 0px; margin: 0px;\">26/03/2018 a 25/03/2022</strong></span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Alice Guimarães Rainho</span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">Elcio Rezende Freire</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2016 a 25/03/2020</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: medium;\">José Carlos Gonzaga</span><br style=\"padding: 0px; margin: 0px;\"></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Nancy Letícia Wanderlei Gallardo</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2018 a 25/03/2022</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Washington Luiz Pereira</span></td><td style=\"padding: 0px; margin: 0px;\">&nbsp;</td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2016 a 25/03/2020</span></td></tr></tbody></table><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\">DIRETORIA EXECUTIVA</span></h3><br style=\"padding: 0px; margin: 0px;\"><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">A Diretoria Executiva é o órgão executivo de administração geral da FUNDIÁGUA a quem compete cumprir e fazer cumprir as normas legais e infralegais, estatutárias e regulamentares, bem como fazer executar as diretrizes e políticas baixadas pelo Conselho Deliberativo, dentro dos objetivos por ele fixados.&nbsp;</span></p><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><br style=\"padding: 0px; margin: 0px;\"></span><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Composta por&nbsp; 3 (três) membros designados pelo Conselho Deliberativo.&nbsp;</span></p><br style=\"padding: 0px; margin: 0px;\"><div style=\"padding: 0px; margin: 0px; font-family: &quot;segoe ui&quot;;\"><table cellspacing=\"0\" cellpadding=\"2\" bordercolor=\"#004564\" border=\"1\" style=\"padding: 0px; margin: 0px; width: 718px; height: 100px;\"><tbody style=\"padding: 0px; margin: 0px;\"><tr bgcolor=\"#004564\" height=\"10px\" style=\"padding: 0px; margin: 0px;\"><td align=\"center\" colspan=\"3\" style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px; color: rgb(255, 255, 255);\">DIRETORIA EXECUTIVA</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\"><span style=\"padding: 0px; margin: 0px; text-align: center; font-size: medium;\">Jackson Zeni Czarneski</span><br style=\"padding: 0px; margin: 0px;\"></span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Presidente</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/10/2018 a 25/03/2020</span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Mario de Figueiredo Neto<br style=\"padding: 0px; margin: 0px;\"></span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Diretor&nbsp; Financeiro</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">11/05/2018 a 25/03/2022<br style=\"padding: 0px; margin: 0px;\"></span></td></tr><tr style=\"padding: 0px; margin: 0px;\"><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Elton Gonçalves</span></td><td style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">Diretor de Seguridade</span></td><td style=\"padding: 0px; margin: 0px; text-align: center;\"><span style=\"padding: 0px; margin: 0px; font-size: 16px;\">26/03/2016 a 25/03/2020</span></td></tr></tbody></table></div><br style=\"padding: 0px; margin: 0px;\"><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;segoe ui&quot;;\"><span style=\"padding: 0px; margin: 0px; font-size: 18px;\">ORGANOGRAMA</span></h3><span style=\"padding: 0px; margin: 0px; font-family: &quot;segoe ui&quot;;\"><img alt=\"\" src=\"https://www.fundiagua.com.br/Institucional/Uploads/Paginas/Organograma2018.jpg\" style=\"padding: 0px; margin: 0px; width: 841px; height: 520px;\"></span><br style=\"padding: 0px; margin: 0px;\"><h3 style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 69, 96); font-family: &quot;segoe ui&quot;;\"></h3></div></div></div></div></div><footer style=\"padding: 20px 0px; margin: 0px; background-color: rgb(30, 89, 142); text-align: center; color: white; font-size: 12px; min-width: 1230px; font-family: Arial, Helvetica, sans-serif;\"><div class=\"container\" style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; width: 1170px; height: auto;\"><div class=\"clearfix\" style=\"padding: 0px; margin: 0px; display: inline-block; width: 1170px;\"></div></div></footer>', 'institucional', '2018-12-03 15:28:26', '2018-12-11 19:13:50', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2018-11-16 15:41:52', '2018-11-16 15:41:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(2, 2, 1, '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(3, 3, 1, '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(4, 4, 1, '2018-11-16 15:41:52', '2018-11-16 15:41:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `image`, `body`, `slug`, `source`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Corpo encontrado em trilha de Arraial do Cabo é de turista catarinense e perícia identifica lesões na cabeçassssss', '/storage/uploads/2018-11-22/cropped_iDIqTzhrfZOj8vesdnBDOwRApc1DK9qhTtqhz1A9.jpeg', '<p>O corpo encontrado em Arraial do Cabo, na Região dos Lagos do Rio, na tarde desta quarta-feira (21), é da turista catarinense que estava desaparecida desde o último domingo (18). Um cão farejador localizou o corpo da empresária Fabiane Fernandes, de 30 anos.</p><p>A perícia da Polícia Civil encontrou documentos e pertences da vítima no local. Ela foi encontrada nua e com lesões na cabeça e pelo corpo. As buscas estavam no terceiro dia. O corpo ainda está no local e será encaminhado ao IML.</p>', 'corpo-encontrado-em-trilha-de-arraial-do-cabo-e-de-turista-catarinense-e-pericia-identifica-lesoes-na-cabeca', NULL, 1, '2018-11-21 20:59:04', '2018-11-22 20:25:07'),
(2, 2, '285 municípios ficam sem nenhum médico na atenção básica com saída dos cubanos, diz entidade; veja lista', '/storage/uploads/2018-11-22/cropped_iPLO1EfMtpSdXvlw7BmEjElZ6BPHPQYZzRe2MgRW.jpeg', 'Um levantamento feito pelo Conselho Nacional de Secretários Municipais de Saúde (Conasems), obtido pelo G1, aponta que pelo menos 285 cidades em 19 estados do Brasil devem ficar sem médicos dedicados à atenção básica em saúde na rede pública com a saída dos cubanos do programa Mais Médicos (veja lista completa no final da reportagem).\r\n\r\nA estimativa do conselho segue os seguintes critérios:\r\n\r\nConsidera municípios que têm apenas uma Equipe de Saúde da Família (ESF)\r\nA equipe precisa ser participante do Mais Médicos\r\nO médico dessa Equipe de Saúde era cubano[\r\nA atenção básica é a rede de atendimento que pode ser apontada como a porta de entrada no Sistema Único de SAúde (SUS). Ela abrange prevenção, diagnóstico, tratamento, reabilitação, redução de danos e manutenção da saúde; e o trabalho é realizado sobretudo em unidades básicas de saúde (UBS) e espaços equivalentes.\r\n\r\nCada equipe de Saúde da Família conta com apenas um médico, mas também tem outros profissionais de saúde — como enfermeiros, técnicos de enfermagem e agentes comunitários de saúde. Os médicos vindos de Cuba atuavam nessas equipes. Elas podem ficar responsáveis por até 4 mil habitantes.\r\n\r\nO número de 285 cidades ainda pode ser ampliado, de acordo com o Conasems. A estimativa também não considera, por exemplo, se o município tem — eventualmente — algum médico em estabelecimento da rede privada ou mesmo se a cidade tem parceria com município vizinho para assistência mútua. O levantamento retrata especificamente o total de locais que só tinham uma ESF, sendo a equipe parte do Mais Médicos e com profissional cubano no grupo.', '285-municipios-ficam-sem-nenhum-medico-na-atencao-basica-com-saida-dos-cubanos-diz-entidade-veja-lista', NULL, 0, '2018-11-22 19:13:18', '2018-11-22 19:13:18'),
(3, 2, 'Black Friday: shopping do DF pinta funcionárias com tinta preta para anunciar descontos', '/storage/uploads/2018-11-22/cropped_Kbv5sUzL9CmRMwMydj3vArlxMT2OxU6A8hJTXpzI.jpeg', '<p>Um shopping de Águas Claras, no Distrito Federal, pintou o rosto de duas mulheres com tinta preta para anunciar as promoções da Black Friday. A ação foi registrada em vídeo, na tarde desta quinta-feira (22). Além do rosto escuro, as trabalhadoras também usavam perucas de cabelo crespo.</p><p>Conhecida como \"blackface\", a prática é considerada racista por historiadores, pesquisadores e ativistas do movimento negro. Segundo eles, essa pintura remete ao costume de pintar atores brancos de preto, no século 19, já que os negros não podiam atuar no teatro e no cinema. A ação do shopping foi filmada e fotografada por motoristas e pedestres que passavam pelo local, e denunciada como publicidade racista em um grupo de moradores da região no Facebook.</p><p>\"Quão absurdo é você virar a esquina e encontrar uma publicidade completamente pautada no RACISMO? Essa propaganda não foi somente ridícula, ela foi racista, usou-se BLACKFACE para fazer um anúncio sobre a Black Friday do shopping, é sério isso???? Vocês não cansam?\", questionou uma moradora da região.&nbsp;&nbsp;</p>', 'black-friday-shopping-do-df-pinta-funcionarias-com-tinta-preta-para-anunciar-descontos', NULL, 0, '2018-11-22 22:18:40', '2018-11-22 22:18:40'),
(9, 2, 'Vitória transforma clima do Vasco; Fernando Miguel ameaça posto do até então intocável Martín', '/storage/uploads/2018-11-23/cropped_7HbejBMmaYJhThjleveHgZluWraZlZZZUS8r7uEd.jpeg', '<p><p>Andrey e Pikachu fizeram os gols do Vasco na vitória por 2 a 0 sobre o São Paulo, quinta-feira, em São Januário, mas a defesa espetacular de Fernando Miguel na cabeçada de Rodrigo Caio, quando o placar estava 1 a 0, o transformou também em herói. Mais do que isso. Com a boa sequência de atuações, ele ameaça posto de titular de Martín Silva, que estará à disposição para a próxima rodada, contra o Palmeiras.</p>O uruguaio chegou a ser barrado pelo técnico Celso Roth em 2015, em seu segundo ano no clube, mas com o tempo se tornou ídolo e quase intocável. Contratado neste ano, Fernando Miguel conquistou a confiança de todos no clube, e, aos poucos, fez com que a presença de Martín fosse considerada mais \"indispensável\", já que anteriormente não tinha substitutos considerados à altura.\r\n</p><p><span style=\"font-size: 1rem;\">Foi assim, por exemplo, quando ele retornou de uma de suas recentes convocações para seleção do Uruguai e se dispôs para viajar no mesmo dia para enfrentar o Sport, no Recife. A decisão da comissão técnica foi de manter Fernando Miguel na equipe.</span><br></p>', 'vitoria-transforma-clima-do-vasco-fernando-miguel-ameaca-posto-do-ate-entao-intocavel-martin', 'https://globoesporte.globo.com/futebol/times/vasco/noticia/vitoria-transforma-clima-do-vasco-fernando-miguel-ameaca-posto-do-ate-entao-intocavel-martin.ghtml', 1, '2018-11-23 14:42:59', '2018-11-23 15:35:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin', 'Administrador', 5, '2018-11-16 15:41:52', '2018-11-16 15:41:52'),
(2, 'Usuário', 'user', 'Usuário', 1, '2018-11-16 15:41:52', '2018-11-16 15:41:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(25, 1, 1, '2018-11-22 20:46:56', '2018-11-22 20:46:56'),
(22, 1, 2, '2018-11-19 22:28:54', '2018-11-19 22:28:54'),
(24, 2, 5, '2018-11-21 16:10:32', '2018-11-21 16:10:32'),
(23, 2, 4, '2018-11-21 16:09:23', '2018-11-21 16:09:23');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gustavo Vieira da Silva', 'gustavovieira2013silva@gmail.com', '$2y$10$QXev2eRszIDFqz/NI1ghKuoN2IWOaDn49AHb3EPnpFtQcF6Raug0.', 'leOOlf7k17VgB7Z7P3M6wE83918PlxTnfonZLuDQ6b8L0R3YWu5oJs7IfFn7', 0, '2018-11-16 15:51:42', '2018-11-22 20:47:14'),
(2, 'Gustavo Silva', 'gustavo.vieira@dubbox.com.br', '$2y$10$EucJXzctUMfZwzxhrueh0OAdlVYZVnPCER2J8PKzSjFzg6xuH5OWq', 'iRmgj4rQ8G3uWYMAIVY0FxgtRdt4cOndH729zV2mZzelUylMgdLkySz4PzqR', 0, '2018-11-16 16:41:49', '2018-11-19 22:28:54'),
(4, 'teste', 'gustavo@h.com', '$2y$10$rWsPB0cBIr/neIhznoigReLUWykLxDnZIosj3VH2FlyUlySZ4lw4G', NULL, 2, '2018-11-21 16:09:23', '2018-11-21 16:09:23'),
(5, 'teste', 'gustavo@h.com.br', '$2y$10$IrgKPd0kYGzrdiGHWfUByu6FG/X1O0qwMaecrHEIHL/RL4TrmBurC', NULL, 2, '2018-11-21 16:10:32', '2018-11-21 16:10:32');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Índices de tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Índices de tabela `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Índices de tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Índices de tabela `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
