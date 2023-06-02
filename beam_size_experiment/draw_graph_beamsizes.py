import matplotlib.pyplot as plt


def create_linechart(y_values, label):
    x_axis = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    y_axis = y_values
    plt.plot(x_axis, y_axis, label = label)
    plt.legend()
    return plt




def main():
    
    bleu = [12.9, 14.5, 14.6, 14.5, 14.6, 14.7, 14.5, 14.5, 14.4, 14.3]
    time = [304, 124, 175, 226, 304, 363, 417, 546, 645, 741]
    #create a line chart and save it
    plt = create_linechart(bleu, "bleu")
    plt.savefig('plot_bleu.png')
    plt.clf()
    
    plt = create_linechart(time, "time")
    plt.savefig('plot_time.png')
    plt.clf()

if __name__ == '__main__':
    main()