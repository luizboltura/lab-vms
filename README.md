## README: Configurando o Ambiente de Desenvolvimento Multi-VM com Vagrant

Este repositório contém um Vagrantfile que permite criar um ambiente de desenvolvimento multi-VM completo e pronto para uso em seu computador, o sistema operacional host utilizado foi o Ubuntu 22.04, mas nada impede de ser usado em outra distrô Linux ou em ambiente Windows, só ficar atento a possíveis adaptações. O ambiente utiliza o VirtualBox 7.0.12 e o Vagrant 2.4.1 para provisionar três máquinas virtuais:

* **control-node:** A máquina virtual de controle, responsável por gerenciar a rede e outras tarefas de infraestrutura.
* **app-01:** A primeira máquina virtual de aplicativo.
* **app-02:** A segunda máquina virtual de aplicativo.

**Requisitos:**

* Ubuntu 22.04
* VirtualBox 7.0.12
* Vagrant 2.4.1

**Instalação:**

1. **Clone este repositório:**

   ```bash
   git clone https://github.com/luizboltura/lab-estudos.git
   ```

2. **Navegue para o diretório do projeto:**

   ```bash
   cd [nome-do-repositório]
   ```

3. **Inicialize as máquinas virtuais:**

   ```bash
   vagrant up
   ```

4. **Acesse as máquinas virtuais via SSH:**

   * **control-node:**

      ```bash
      vagrant ssh control-node
      ```

   * **app-01:**

      ```bash
      vagrant ssh app-01
      ```

   * **app-02:**

      ```bash
      vagrant ssh app-02
      ```

**Uso:**

* Uma vez que as máquinas virtuais estejam funcionando, você pode usá-las como qualquer outro ambiente de desenvolvimento.
* O diretório `/vagrant` dentro das máquinas virtuais é mapeado para o diretório do projeto em seu computador local. Isso significa que você pode fazer alterações nos arquivos em seu computador local e vê-las imediatamente refletidas nas máquinas virtuais.
* Para parar as máquinas virtuais, execute o seguinte comando:

   ```bash
   vagrant halt
   ```

* Para destruir as máquinas virtuais completamente, execute o seguinte comando:

   ```bash
   vagrant destroy
   ```

**Observações:**

* Este Vagrantfile utiliza uma rede privada para as máquinas virtuais. Você pode configurar o roteamento e o acesso externo conforme necessário.
* As ferramentas e configurações específicas instaladas em cada máquina virtual podem ser personalizadas de acordo com suas necessidades.
* Consulte a documentação do Vagrant e do VirtualBox para obter mais informações sobre como usar essas ferramentas.

**Contribuições:**

Sinta-se à vontade para contribuir com este repositório enviando pull requests com melhorias ou correções.

**Suporte:**

Se você tiver dúvidas ou problemas com este Vagrantfile, por favor, envie um issue neste repositório.

**Espero que este ambiente de desenvolvimento multi-VM seja útil para você!**

**Melhorias Adicionais:**

* **Provisionamento:** Você pode adicionar scripts de provisionamento ao Vagrantfile para instalar ferramentas e configurar o ambiente de acordo com suas necessidades específicas.
* **Segurança:** Configure firewalls e outras medidas de segurança para proteger suas máquinas virtuais.
* **Monitoramento:** Utilize ferramentas de monitoramento para acompanhar o desempenho e a saúde das suas máquinas virtuais.
* **Documentação:** Documente detalhadamente a configuração e o uso do seu ambiente de desenvolvimento para facilitar a colaboração com outros membros da equipe.

