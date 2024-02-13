class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [


  WidgetQuestion(
    text:"Maximum power that can be transfer from source to load is:  ",
    options: [
      const WiidgetOption(text: "50%", isCorrect: true),
      const WiidgetOption(text: "25%", isCorrect: false),
      const WiidgetOption(text: "75%", isCorrect: false),
      const WiidgetOption(text: "100%", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "50%", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "Power factor R/Z has maximum value of:",
      options: [
        const WiidgetOption(text: "0", isCorrect: false),
        const WiidgetOption(text: "1", isCorrect: true),
        const WiidgetOption(text: "0.5", isCorrect: false),
        const WiidgetOption(text: "1.5", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "1", isCorrect: true)),
  WidgetQuestion(
      text:
          "EEPROM has drain and floating gate gap of …..  ?",
      options: [
        const WiidgetOption(text: "5 nm", isCorrect: false),
        const WiidgetOption(text: "19 nm", isCorrect: false),
        const WiidgetOption(text: "15 nm", isCorrect: false),
        const WiidgetOption(text: "12 nm", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "normally 12 nm", isCorrect: true)),
  WidgetQuestion(
      text:
          "Heisenberg principle of uncertainty says: Signal of ",
      options: [
        const WiidgetOption(text: "10Hz can be generated. ", isCorrect: false),
        const WiidgetOption(text: "10MHz can be generated", isCorrect: false),
        const WiidgetOption(text: "100MHz can be generated", isCorrect: false),
        const WiidgetOption(text: "100MHz-105MHz can be generated", isCorrect: true),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "100MHz-105MHz can be generated", isCorrect: true)),
  WidgetQuestion(
      text:"UHF frequency signal can be amplified using:",
      options: [
        const WiidgetOption(text: " Class A amplifier", isCorrect: false),
        const WiidgetOption(text: " Class AB amplifier", isCorrect: false),
        const WiidgetOption(text: " Class B amplifier", isCorrect: false),
        const WiidgetOption(text: " Class C amplifier", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: " Class C amplifier", isCorrect: true)),
      
   WidgetQuestion(
      text:"Two's complement of 00011011 is:",
      options: [
        const WiidgetOption(text: "11100100", isCorrect: false),
        const WiidgetOption(text: "11000101", isCorrect: false),
        const WiidgetOption(text: "11110001", isCorrect: false),
        const WiidgetOption(text: "11100101", isCorrect: true),
      ],
      id: 5,
      correctAnswer: const WiidgetOption(text: "11100101", isCorrect: true)),
  WidgetQuestion( //answer not set
      text:"Elementary building block of combinational circuit is:",
      options: [
        const WiidgetOption(text: "Logic gate", isCorrect: true),
        const WiidgetOption(text: "Flip-flop", isCorrect: false),
        const WiidgetOption(text: "Both logic gate and flip flop", isCorrect: false),
        const WiidgetOption(text: "Memory", isCorrect: false),
      ],
      id: 6,
      correctAnswer: const WiidgetOption(text: "Logic gate", isCorrect: true)),

  WidgetQuestion(
      text:"8255 PPI has internal bus size of:",
      options: [
        const WiidgetOption(text: "4 bit", isCorrect: false),
        const WiidgetOption(text: "16 bit", isCorrect: false),
        const WiidgetOption(text: "32 bit", isCorrect: false),
        const WiidgetOption(text: "8 bit", isCorrect: true),
      ],
      id: 7,
      correctAnswer: const WiidgetOption(text: "8 bit", isCorrect: true)),

  WidgetQuestion(
      text:"Interrupt Service Route (ISR) executes :",
      options: [
        const WiidgetOption(text: "Before execution of current instructions", isCorrect: false),
        const WiidgetOption(text: "With pause of current instructions ", isCorrect: false),
        const WiidgetOption(text: "With execution of no instruction ", isCorrect: false),
        const WiidgetOption(text: "After execution of current instructions", isCorrect: true),
      ],
      id:8 ,
      correctAnswer: const WiidgetOption(text: "After execution of current instructions", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a data type in C?",
      options: [
        const WiidgetOption(text: "int", isCorrect: false),
        const WiidgetOption(text: "float", isCorrect: false),
        const WiidgetOption(text: "char", isCorrect: false),
        const WiidgetOption(text: "string    ", isCorrect: true),
      ],
      id:9 ,
      correctAnswer: const WiidgetOption(text: " String    ", isCorrect: true)),


  WidgetQuestion(
      text:"What is the size of pointer in C:",
      options: [
        const WiidgetOption(text: "1 byte", isCorrect: false),
        const WiidgetOption(text: "2 bytes", isCorrect: false),
        const WiidgetOption(text: "4 bytes", isCorrect: false),
        const WiidgetOption(text: "It depends on the system architecture", isCorrect: true),
      ],
      id:10 ,
      correctAnswer: const WiidgetOption(text: "It depends on the system architecture", isCorrect: true)),


  WidgetQuestion(
      text:"Which access specifier is used to make the members of a class accessible only within the same class?",
      options: [
        const WiidgetOption(text: "public", isCorrect: false),
        const WiidgetOption(text: "protected", isCorrect: false),
        const WiidgetOption(text: "public and protected", isCorrect: false),
        const WiidgetOption(text: "private", isCorrect: true),
      ],
      id:11 ,
      correctAnswer: const WiidgetOption(text: "private", isCorrect: true)),


  WidgetQuestion(
      text:"What is operator overloading in C++?",
      options: [
        const WiidgetOption(text: "Defining a new operator", isCorrect: false),
        const WiidgetOption(text: "Overriding an existing operator", isCorrect: false),
        const WiidgetOption(text: "behaviour of new operator", isCorrect: false),
        const WiidgetOption(text: "behaviour of an existing operator.", isCorrect: true),
      ],
      id:12 ,
      correctAnswer: const WiidgetOption(text: "Changing the behaviour of an existing operator.", isCorrect: true)),


  WidgetQuestion(
      text:"What is the difference between ifstream and ofstream in C++?",
      options: [
        const WiidgetOption(text: "output and input resp", isCorrect: false),
        const WiidgetOption(text: "both are used as input", isCorrect: false),
        const WiidgetOption(text: "both are used as output", isCorrect: false),
        const WiidgetOption(text: "used for inputand  output resp", isCorrect: true),
      ],
      id:13,
      correctAnswer: const WiidgetOption(text: "ifstream is used for input, while ofstream is used for output.", isCorrect: true)),


  WidgetQuestion(
      text:"What is a class template in C++?",
      options: [
        const WiidgetOption(text: "function to create objects", isCorrect: false),
        const WiidgetOption(text: "variable to create objects", isCorrect: false),
        const WiidgetOption(text: "character to create objects", isCorrect: false),
        const WiidgetOption(text: "class used to create objects", isCorrect: true),
      ],
      id:14 ,
      correctAnswer: const WiidgetOption(text: "A class that can be used to create objects of different types", isCorrect: true)),


  WidgetQuestion(
      text:"What is the purpose of the control unit in a CPU?",
      options: [
        const WiidgetOption(text: "To perform arithmetic and logical \noperations on data.", isCorrect: false),
        const WiidgetOption(text: "To store and retrieve data from \nmemory", isCorrect: false),
        const WiidgetOption(text: "To print data from memory", isCorrect: false),
        const WiidgetOption(text: "interpret instructions and control the \nflow of data", isCorrect: true),
      ],
      id:15 ,
      correctAnswer: const WiidgetOption(text: "To interpret instructions and control the flow of data within the CPU.", isCorrect: true)),


  WidgetQuestion(
      text:"What is the purpose of the cache replacement policy? To determine which",
      options: [
        const WiidgetOption(text: "data to store in the cache", isCorrect: false),
        const WiidgetOption(text: "data to evict from the cache when space is needed", isCorrect: true),
        const WiidgetOption(text: "levels of cache to use", isCorrect: false),
        const WiidgetOption(text: "data to store in RAM", isCorrect: false),
      ],
      id:16 ,
      correctAnswer: const WiidgetOption(text: "To determine which data to evict from the cache when space is needed", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a type of DMA transfer mode?",
      options: [
        const WiidgetOption(text: "Burst mode", isCorrect: false),
        const WiidgetOption(text: "Cycle-stealing mode", isCorrect: false),
        const WiidgetOption(text: "Interrupt mode", isCorrect: false),
        const WiidgetOption(text: "Instruction mode", isCorrect: true),
      ],
      id:17 ,
      correctAnswer: const WiidgetOption(text: "Instruction mode", isCorrect: true)),


  WidgetQuestion(
      text:"An instruction set refers to a set of:",
      options: [
        const WiidgetOption(text: "printing command", isCorrect: false),
        const WiidgetOption(text: "input/output operations that a processor can perform", isCorrect: false),
        const WiidgetOption(text: "rules for writing code in a specific programming language", isCorrect: false),
        const WiidgetOption(text: "instructions that a processor can execute", isCorrect: true),
      ],
      id:18 ,
      correctAnswer: const WiidgetOption(text: "instructions that a processor can execute", isCorrect: true)),


  WidgetQuestion(
      text:"What is a real-time kernel",
      options: [
        const WiidgetOption(text: "The user interface of a real-time operating system", isCorrect: false),
        const WiidgetOption(text: "The hardware component of a real-time operating system.", isCorrect: false),
        const WiidgetOption(text: "The core component of a real-time pointer system", isCorrect: false),
        const WiidgetOption(text: "The core component of a real-time operating system", isCorrect: true),
      ],
      id:19 ,
      correctAnswer: const WiidgetOption(text: "The core component of a real-time operating system", isCorrect: true)),


  WidgetQuestion(
      text:"What is a signal in VHDL?",
      options: [
        const WiidgetOption(text: "A variable used to store a value in a digital circuit", isCorrect: false),
        const WiidgetOption(text: "A function used to perform a specific task in VHDL", isCorrect: false),
        const WiidgetOption(text: "A file used to store a specific task", isCorrect: false),
        const WiidgetOption(text: "A physical wire used to transmit data in a digital circuit", isCorrect: true),
      ],
      id:20 ,
      correctAnswer: const WiidgetOption(text: "A physical wire used to transmit data in a digital circuit", isCorrect: true)),


  WidgetQuestion(
      text:" Which of the following is an example of a physical layer protocol? ",
      options: [
        const WiidgetOption(text: " ISP ", isCorrect: false),
        const WiidgetOption(text: " HTTP", isCorrect: false),
        const WiidgetOption(text: "TCP ", isCorrect: false),
        const WiidgetOption(text: "Ethernet ", isCorrect: true),
      ],
      id:21 ,
      correctAnswer: const WiidgetOption(text: "Ethernet, WiFi etc", isCorrect: true)),


  WidgetQuestion(
      text:"The PPP (P2P) of the OSI model operates at -:",
      options: [
        const WiidgetOption(text: "Transport layer ", isCorrect: false),
        const WiidgetOption(text: "Network layer ", isCorrect: false),
        const WiidgetOption(text: "Physical layer ", isCorrect: false),
        const WiidgetOption(text: "Data link layer", isCorrect: true),
      ],
      id:22 ,
      correctAnswer: const WiidgetOption(text: "core functions handled by Data link layer", isCorrect: true)),


  WidgetQuestion(
      text:" Which of the following is a type of routing algorithm used in the network layer? ",
      options: [
        const WiidgetOption(text: "Link-state routing", isCorrect: false),
        const WiidgetOption(text: "Distance-vector routing", isCorrect: false),
        const WiidgetOption(text: "Path-vector routing", isCorrect: false),
        const WiidgetOption(text: "All of the above.", isCorrect: true),
      ],
      id:23 ,
      correctAnswer: const WiidgetOption(text: "Link state routing, distance vector routing, path vectoer routing", isCorrect: true)),


  WidgetQuestion(
      text:"Which protocol is responsible for error detection and correction at the transport layer?",
      options: [
        const WiidgetOption(text: "TCP", isCorrect: true),
        const WiidgetOption(text: "UDP", isCorrect: false),
        const WiidgetOption(text: "ICMP", isCorrect: false),
        const WiidgetOption(text: "ARP", isCorrect: false),
      ],
      id:24 ,
      correctAnswer: const WiidgetOption(text: "TCP", isCorrect: true)),


  WidgetQuestion(
      text:"Which application layer protocol is used for sending and receiving emails? ",
      options: [
        const WiidgetOption(text: "HTTP", isCorrect: false),
        const WiidgetOption(text: "FTP", isCorrect: false),
        const WiidgetOption(text: "SMTP ", isCorrect: true),
        const WiidgetOption(text: "POP", isCorrect: false),
      ],
      id:25 ,
      correctAnswer: const WiidgetOption(text: "SMTP", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a common type of firewall? ",
      options: [
        const WiidgetOption(text: "Packet-filtering firewall ", isCorrect: false),
        const WiidgetOption(text: "Stateful inspection firewall ", isCorrect: false),
        const WiidgetOption(text: "Proxy firewall", isCorrect: false),
        const WiidgetOption(text: "Encryption firewall ", isCorrect: true),
      ],
      id:26 ,
      correctAnswer: const WiidgetOption(text: "Encryption firewall", isCorrect: true)),


  WidgetQuestion(
      text:"The Poisson equation is a partial differential equation that describes:",
      options: [
        const WiidgetOption(text: "Relationship between pressure and velocity in a fluid ", isCorrect: false),
        const WiidgetOption(text: "Flow of heat in a material", isCorrect: false),
        const WiidgetOption(text: "Propagation of electromagnetic waves", isCorrect: false),
        const WiidgetOption(text: "Distribution of electric charge in space", isCorrect: true),
      ],
      id:27 ,
      correctAnswer: const WiidgetOption(text: "Distribution of electric charge in space", isCorrect: true)),


  WidgetQuestion(
      text:"What is the shape of the magnetic field around a current-carrying loop?  ",
      options: [
        const WiidgetOption(text: "Cylindrical ", isCorrect: false),
        const WiidgetOption(text: "Toroidal", isCorrect: true),
        const WiidgetOption(text: "Cylindrical ", isCorrect: false),
        const WiidgetOption(text: "Spherical", isCorrect: false),
      ],
      id:28 ,
      correctAnswer: const WiidgetOption(text: "Toroidal", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is a measure of the efficiency of an antenna?  ",
      options: [
        const WiidgetOption(text: "Directivity ", isCorrect: false),
        const WiidgetOption(text: "Radiation resistance", isCorrect: false),
        const WiidgetOption(text: "Bandwidth ", isCorrect: false),
        const WiidgetOption(text: "Gain ", isCorrect: true),
      ],
      id:29 ,
      correctAnswer: const WiidgetOption(text: "Gain", isCorrect: true)),


  WidgetQuestion(
      text:"what is the wave quation of 1D wave travelling in x dir with speed v?",
      options: [
        const WiidgetOption(text: "∂²u/∂x² = v²∂²u/∂t²", isCorrect: false),
        const WiidgetOption(text: "∂u/∂x = v²∂u/∂t", isCorrect: false),
        const WiidgetOption(text: "∂u/∂x + v²∂u/∂t = 0 ", isCorrect: false),
        const WiidgetOption(text: "∂²u/∂x² + v²∂²u/∂t² = 0 ", isCorrect: true),
      ],
      id:30 ,
      correctAnswer: const WiidgetOption(text: "∂²u/∂x² + v²∂²u/∂t² = 0 ", isCorrect: true)),


  WidgetQuestion(
      text:"Factors that affect the radiation pattern of an omnidirectional antenna is",
      options: [
        const WiidgetOption(text: "Length and shape of the antenna", isCorrect: true),
        const WiidgetOption(text: "Area of the antenna", isCorrect: false),
        const WiidgetOption(text: "Materials used to make the antenna", isCorrect: false),
        const WiidgetOption(text: "Height of the antenna ", isCorrect: false),
      ],
      id:31 ,
      correctAnswer: const WiidgetOption(text: " Length and shape of the antenna", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following frequency ranges is used for Bluetooth communication?",
      options: [
        const WiidgetOption(text: "2.4 GHz to 5 GHz", isCorrect: false),
        const WiidgetOption(text: "700 MHz to 800 MHz ", isCorrect: false),
        const WiidgetOption(text: "2.6 GHz to 2.7 GHz ", isCorrect: false),
        const WiidgetOption(text: "1.8 GHz to 1.9 GHz", isCorrect: true),
      ],
      id:32 ,
      correctAnswer: const WiidgetOption(text: "1.8 GHz to 1.9 GHz", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following techniques is used to improve the performance of a channel encoder in the presence of burst errors? ",
      options: [
        const WiidgetOption(text: "Convolutional coding", isCorrect: false),
        const WiidgetOption(text: "Hamming coding", isCorrect: false),
        const WiidgetOption(text: "Differential coding", isCorrect: false),
        const WiidgetOption(text: "Interleaving", isCorrect: true),
      ],
      id:33 ,
      correctAnswer: const WiidgetOption(text: "Interleaving", isCorrect: true)),


  WidgetQuestion(
      text:"What is the minimum bandwidth required for a signal with a data rate of 10 Mbps using inary phase shift keying (BPSK)? ",
      options: [
        const WiidgetOption(text: "10 MHz", isCorrect: false),
        const WiidgetOption(text: "20 MHz", isCorrect: false),
        const WiidgetOption(text: "40 MHz ", isCorrect: false),
        const WiidgetOption(text: "5 MHz", isCorrect: true),
      ],
      id:34 ,
      correctAnswer: const WiidgetOption(text: "5 MHz", isCorrect: true)),


  WidgetQuestion(
      text:"What is the modulation index of an AM signal with a carrier amplitude of 10 V and a modalating signal with a peak-to-peak amplitude of 2 V?",
      options: [
        const WiidgetOption(text: "0.2", isCorrect: false),
        const WiidgetOption(text: "0.6", isCorrect: false),
        const WiidgetOption(text: "0.8", isCorrect: false),
        const WiidgetOption(text: "0.4", isCorrect: true),
      ],
      id:35 ,
      correctAnswer: const WiidgetOption(text: "0.4", isCorrect: true)),


  WidgetQuestion(
      text:"Source coding is a technique:",
      options: [
        const WiidgetOption(text: "To encode the information in a communication system  ", isCorrect: false),
        const WiidgetOption(text: "To reduce the noise in a communication channel", isCorrect: false),
        const WiidgetOption(text: "To increase the bandwidth of a communication channel", isCorrect: false),
        const WiidgetOption(text: "To reduce the number of bits required to represent a source signal ", isCorrect: true),
      ],
      id:37 ,
      correctAnswer: const WiidgetOption(text: "To reduce the number of bits required to represent a source signal ", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a type of error correction code?  ",
      options: [
        const WiidgetOption(text: "Hamming Code", isCorrect: false),
        const WiidgetOption(text: "Convolutional Code", isCorrect: false),
        const WiidgetOption(text: "Reed-Solomon Code", isCorrect: false),
        const WiidgetOption(text: "Checksum", isCorrect: true),
      ],
      id:38 ,
      correctAnswer: const WiidgetOption(text: "Checksum", isCorrect: true)),



  WidgetQuestion(
      text:"What is the power spectral density of a random process? ",
      options: [
        const WiidgetOption(text: "The Fourier transform of the autocorrelation function", isCorrect: false),
        const WiidgetOption(text: "The cross-correlation between the process and a delayed version of itself", isCorrect: false),
        const WiidgetOption(text: "The mean value of the process", isCorrect: false),
        const WiidgetOption(text: "The Fourier transform of the probability density function ", isCorrect: true),
      ],
      id:39 ,
      correctAnswer: const WiidgetOption(text: "The Fourier transform of the probability density function", isCorrect: true)),


  WidgetQuestion(
      text:"What is the bandwidth of the sinc function?",
      options: [
        const WiidgetOption(text: "1 Hz", isCorrect: false),
        const WiidgetOption(text: "2 Hz", isCorrect: false),
        const WiidgetOption(text: "π Hz", isCorrect: false),
        const WiidgetOption(text: "1/π Hz ", isCorrect: true),
      ],
      id:40 ,
      correctAnswer: const WiidgetOption(text: "1/π Hz ", isCorrect: true)),


  WidgetQuestion(
      text:"What is the transfer function of an LTI system?",
      options: [
        const WiidgetOption(text: "The Laplace transform of the impulse response ", isCorrect: true),
        const WiidgetOption(text: "The Fourier transform of the impulse response", isCorrect: false),
        const WiidgetOption(text: "The Laplace transform of the step response", isCorrect: false),
        const WiidgetOption(text: "The Fourier transform of the step response", isCorrect: false),
      ],
      id:41 ,
      correctAnswer: const WiidgetOption(text: "", isCorrect: true)),


  WidgetQuestion(
      text:"What is the time complexity of the FFT algorithm?  ",
      options: [
        const WiidgetOption(text: "O(N^2)", isCorrect: false),
        const WiidgetOption(text: "O(log(N))", isCorrect: false),
        const WiidgetOption(text: "O(N)", isCorrect: false),
        const WiidgetOption(text: "O(N log(N)) ", isCorrect: true),
      ],
      id:42 ,
      correctAnswer: const WiidgetOption(text: "O(N log(N))", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is a common method used to minimize truncation error in a digital signal processing system? ",
      options: [
        const WiidgetOption(text: "Reduce the number of bits used for representation", isCorrect: false),
        const WiidgetOption(text: "Increase the sampling rate of the system ", isCorrect: false),
        const WiidgetOption(text: "Use a low-pass filter to remove high frequency noise ", isCorrect: false),
        const WiidgetOption(text: "Increase the number of bits used for representation", isCorrect: true),
      ],
      id:44 ,
      correctAnswer: const WiidgetOption(text: "Increase the number of bits used for representation", isCorrect: true)),


  WidgetQuestion(
      text:"The ideal impulse response of a low-pass FIR filter is:",
      options: [
        const WiidgetOption(text: "Delta function", isCorrect: false),
        const WiidgetOption(text: "Gaussian function", isCorrect: false),
        const WiidgetOption(text: "rectangular function", isCorrect: false),
        const WiidgetOption(text: "Sinc function", isCorrect: true),
      ],
      id:45 ,
      correctAnswer: const WiidgetOption(text: " Sinc function", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is an advantage of the FFT algorithm over the DFT algorithm? ",
      options: [
        const WiidgetOption(text: "FFT algorithm requires less memory", isCorrect: false),
        const WiidgetOption(text: "FFT algorithm is more accurate  ", isCorrect: false),
        const WiidgetOption(text: "FFT algorithm is less accurate", isCorrect: false),
        const WiidgetOption(text: "FFT algorithm can be computed faster  ", isCorrect: true),
      ],
      id:46 ,
      correctAnswer: const WiidgetOption(text: " FFT algorithm can be computed faster  ", isCorrect: true)),


  WidgetQuestion(
      text:"Which type of noise is caused by sudden, sharp disturbances in the transmission medium?",
      options: [
        const WiidgetOption(text: "Thermal noise", isCorrect: false),
        const WiidgetOption(text: "Cross-talk", isCorrect: false),
        const WiidgetOption(text: "White noise", isCorrect: false),
        const WiidgetOption(text: "Impulse noise", isCorrect: true),
      ],
      id:47 ,
      correctAnswer: const WiidgetOption(text: "Impulse noise", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a type of cell in a cellular network?",
      options: [
        const WiidgetOption(text: "Microcell", isCorrect: false),
        const WiidgetOption(text: "Macrocell", isCorrect: false),
        const WiidgetOption(text: "Picocell", isCorrect: false),
        const WiidgetOption(text: "Nanocell", isCorrect: true),
      ],
      id:48 ,
      correctAnswer: const WiidgetOption(text: "Nanocell", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is a characteristic of spread spectrum signals?",
      options: [
        const WiidgetOption(text: "They are narrowband signals ", isCorrect: false),
        const WiidgetOption(text: "They have a low signal-to-noise ratio", isCorrect: false),
        const WiidgetOption(text: "They are easy to intercept and jam", isCorrect: false),
        const WiidgetOption(text: "They have a high-power density", isCorrect: true),
      ],
      id:49 ,
      correctAnswer: const WiidgetOption(text: "They have a high-power density", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a type of digital switching? ",
      options: [
        const WiidgetOption(text: "Time-division switching (TDS)", isCorrect: false),
        const WiidgetOption(text: "Circuit switching", isCorrect: false),
        const WiidgetOption(text: "Packet switching", isCorrect: false),
        const WiidgetOption(text: "Frequency-division switching (FDS) ", isCorrect: true),
      ],
      id:50 ,
      correctAnswer: const WiidgetOption(text: "Frequency-division switching (FDS) ", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following is not a type of CCS?",
      options: [
        const WiidgetOption(text: "Signalling System 7 (SS7)", isCorrect: false),
        const WiidgetOption(text: "Integrated Services Digital Network (ISDN)", isCorrect: false),
        const WiidgetOption(text: "Common Channel Interoffice Signalling (CCIS)", isCorrect: false),
        const WiidgetOption(text: "Digital Subscriber Line (DSL)", isCorrect: true),
      ],
      id:51 ,
      correctAnswer: const WiidgetOption(text: "Digital Subscriber Line (DSL)", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following ITU sectors is responsible for the development of standards for radio communication",
      options: [
        const WiidgetOption(text: "ITU-T ", isCorrect: false),
        const WiidgetOption(text: "ITU-D", isCorrect: false),
        const WiidgetOption(text: "ITU-RSG ", isCorrect: false),
        const WiidgetOption(text: "ITU-R", isCorrect: true),
      ],
      id:52 ,
      correctAnswer: const WiidgetOption(text: "ITU-R", isCorrect: true)),


  WidgetQuestion(
      text:"Standard dimensions (mm x mm) of A3 drawing sheet is",
      options: [
        const WiidgetOption(text: "11.69 × 16.54", isCorrect: false),
        const WiidgetOption(text: "29.7 × 42", isCorrect: false),
        const WiidgetOption(text: "420 × 280", isCorrect: false),
        const WiidgetOption(text: "297 × 420", isCorrect: true),
      ],
      id:53 ,
      correctAnswer: const WiidgetOption(text: "297 × 420", isCorrect: true)),


  WidgetQuestion(
      text:"Which of the following methods of charging depreciation of an asset has increased amount of depreciation as the age of asset increases",
      options: [
        const WiidgetOption(text: "sinking fund", isCorrect: false),
        const WiidgetOption(text: "diminishing balance", isCorrect: true),
        const WiidgetOption(text: "straight line", isCorrect: false),
        const WiidgetOption(text: "sum-of-year digit", isCorrect: false),
      ],
      id:54 ,
      correctAnswer: const WiidgetOption(text: "diminishing balance", isCorrect: true)),


  WidgetQuestion(
      text:"The process of optimizing the project’s limited resources without extending the project duration is known as",
      options: [
        const WiidgetOption(text: "project crashing", isCorrect: false),
        const WiidgetOption(text: "resource smoothing ", isCorrect: false),
        const WiidgetOption(text: "networking  ", isCorrect: false),
        const WiidgetOption(text: "resource levelling", isCorrect: true),
      ],
      id:55 ,
      correctAnswer: const WiidgetOption(text: "resource levelling", isCorrect: true)),


  WidgetQuestion(
      text:"The process of composing/raising the required fund from different sources such as equity, preferred stock, bond and debenture is known as",
      options: [
        const WiidgetOption(text: "capital structure planning ", isCorrect: false),
        const WiidgetOption(text: "capital budgeting decision", isCorrect: false),
        const WiidgetOption(text: "deducing earning per share", isCorrect: false),
        const WiidgetOption(text: "project financing", isCorrect: true),
      ],
      id:56 ,
      correctAnswer: const WiidgetOption(text: "project financing", isCorrect: true)),


  WidgetQuestion(
      text:"In which of the following society, people used to seek their existence on growing plants for their cattle and domestic animals?",
      options: [
        const WiidgetOption(text: "agricultural society", isCorrect: false),
        const WiidgetOption(text: "pastoral society", isCorrect: false),
        const WiidgetOption(text: "tribal society", isCorrect: false),
        const WiidgetOption(text: "horticultural society", isCorrect: true),
      ],
      id:57 ,
      correctAnswer: const WiidgetOption(text: "horticultural society", isCorrect: true)),


  WidgetQuestion(
      text:":According to Nepal Engineering Council Act, 2055 (Revised, 2079), all engineering academic institutions shall be …………………….. in the Council.",
      options: [
        const WiidgetOption(text: "united ", isCorrect: false),
        const WiidgetOption(text: "recognized", isCorrect: false),
        const WiidgetOption(text: "associated", isCorrect: false),
        const WiidgetOption(text: "affiliated", isCorrect: true),
      ],
      id:58 ,
      correctAnswer: const WiidgetOption(text: "affiliated", isCorrect: true)),


  WidgetQuestion(
      text:"Decibel relation for power gain is: ",
      options: [
        const WiidgetOption(text: "𝑁𝑑𝐵 = 20 log10(𝑉22/𝑉12) + 10 log10(𝑍1/𝑍2)", isCorrect: false),
        const WiidgetOption(text: "𝑁𝑑𝐵 = 10 log10(𝑉22/𝑉12) + 20 log10(𝑍1/𝑍2)", isCorrect: false),
        const WiidgetOption(text: "𝑁𝑑𝐵 = log10(𝑉22/𝑉12) + log10(𝑍1/𝑍2)", isCorrect: false),
        const WiidgetOption(text: "𝑁𝑑𝐵 = 10 log10(𝑉22/𝑉12) + 10 log10(𝑍1/𝑍2)", isCorrect: true),
      ],
      id:59 ,
      correctAnswer: const WiidgetOption(text: "𝑁𝑑𝐵 = 10 log10(𝑉22/𝑉12) + 10 log10(𝑍1/𝑍2)", isCorrect: true)),


];
