package com.cosineSimilarity;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DocumentParser {

    private List<String[]> termsDocsArray=new ArrayList();
    private List<String> allTerms = new ArrayList();
    private List<String> allTerms1= new ArrayList();//to hold all terms
    private List tfidfDocsVector = new ArrayList();





    public void formatData(Data data, Data query) {
        allTerms.add(data.getRoomType());
        allTerms.addAll(Arrays.asList(data.getFacilities()));

        allTerms1.add(query.getRoomType());
        allTerms1.addAll(Arrays.asList(query.getFacilities()));

        String[] tempStringArr = new String[allTerms.size()];
        String[] tempStringArr1 = new String[allTerms1.size()];

        allTerms.toArray(tempStringArr);
        allTerms1.toArray(tempStringArr1);

        termsDocsArray.add(tempStringArr);
        termsDocsArray.add(tempStringArr1);
    }


    /**
     * Method to create termVector according to its tfidf score.
     */
    public void tfIdfCalculator() {
        double tf; //term frequency
        double idf; //inverse document frequency
        double tfidf; //term requency inverse document frequency

        for (String[] docTermsArray :termsDocsArray) {
            double[] tfidfvectors = new double[allTerms.size()];
            int count = 0;
            for (String terms :(List<String>) allTerms) {
                tf = new TfIdf().tfCalculator(docTermsArray, terms);
                idf = new TfIdf().idfCalculator(termsDocsArray, terms);
                tfidf = tf * idf;
                tfidfvectors[count] = tfidf;
                count++;
            }
            tfidfDocsVector.add(tfidfvectors);    //storing document vectors;
        }
    }

    /**
     * Method to calculate cosine similarity between all the documents.
     */
    public void getCosineSimilarity() {
        for (int i = 0; i < tfidfDocsVector.size()-1; i++) {
            for (int j = 1; j < tfidfDocsVector.size(); j++) {
                System.out.println("between " + i + " and " + j + "  =  "
                        + new CosineSimilarity().cosineSimilarity
                        ((double[]) tfidfDocsVector.get(i), (double[]) tfidfDocsVector.get(j)));
            }
        }
    }

}
