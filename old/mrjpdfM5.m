function L = mrjpdfM5(x)
global C
global Pt
global Pt_1

Cc=C(1:end-1,:);
Cc_1=C(2:end,:);
phi=x(1);mu_J=x(2);sigmaSq=x(3);sigmaSq_J=x(4);lambda=x(5);b0=x(6);bt=x(7);gs1=x(8);gc1=x(9);gs2=x(10);gc2=x(11);
gs3=x(12);gc3=x(13);gs4=x(14);gc4=x(15);gs5=x(16);gc5=x(17);gs6=x(18);gc6=x(19);gs7=x(20);gc7=x(21);
m2=x(22);m3=x(23);m4=x(24);m5=x(25);m6=x(26);m7=x(27);m8=x(28);m9=x(29);m10=x(30);m11=x(31);m12=x(32);bd=x(33);

L=-sum(log(lambda.*exp((-(Pt-(b0*Cc(:,1)+bt*Cc(:,2)+gs1*Cc(:,3)+gc1*Cc(:,4)+gs2*Cc(:,5)+gc2*Cc(:,6)+gs3*Cc(:,7)+gc3*Cc(:,8)+...
    gs4*Cc(:,9)+gc4*Cc(:,10)+gs5*Cc(:,11)+gc5*Cc(:,12)+gs6*Cc(:,13)+gc6*Cc(:,14)+gs7*Cc(:,15)+gc7*Cc(:,16)+...
    m2*Cc(:,17)+m3*Cc(:,18)+m4*Cc(:,19)+m5*Cc(:,20)+m6*Cc(:,21)+m7*Cc(:,22)+m8*Cc(:,23)+m9*Cc(:,24)+m10*Cc(:,25)+...
    m11*Cc(:,26)+m12*Cc(:,27)+bd*Cc(:,28))-phi.*(Pt_1-(b0*Cc_1(:,1)+bt*Cc_1(:,2)+gs1*Cc_1(:,3)+gc1*Cc_1(:,4)+gs2*Cc_1(:,5)+gc2*Cc_1(:,6)+gs3*Cc_1(:,7)+gc3*Cc_1(:,8)+...
    gs4*Cc_1(:,9)+gc4*Cc_1(:,10)+gs5*Cc_1(:,11)+gc5*Cc_1(:,12)+gs6*Cc_1(:,13)+gc6*Cc_1(:,14)+gs7*Cc_1(:,15)+gc7*Cc_1(:,16)+...
    m2*Cc_1(:,17)+m3*Cc_1(:,18)+m4*Cc_1(:,19)+m5*Cc_1(:,20)+m6*Cc_1(:,21)+m7*Cc_1(:,22)+m8*Cc_1(:,23)+m9*Cc_1(:,24)+m10*Cc_1(:,25)+...
    m11*Cc_1(:,26)+m12*Cc_1(:,27)+bd*Cc_1(:,28)))-mu_J).^2)./ ...
    (2.*(sigmaSq+sigmaSq_J))).* (1/sqrt(2.*pi.*(sigmaSq+sigmaSq_J))) + ...
    (1-lambda).*exp((-(Pt-(b0*Cc(:,1)+bt*Cc(:,2)+gs1*Cc(:,3)+gc1*Cc(:,4)+gs2*Cc(:,5)+gc2*Cc(:,6)+gs3*Cc(:,7)+gc3*Cc(:,8)+...
    gs4*Cc(:,9)+gc4*Cc(:,10)+gs5*Cc(:,11)+gc5*Cc(:,12)+gs6*Cc(:,13)+gc6*Cc(:,14)+gs7*Cc(:,15)+gc7*Cc(:,16)+...
    m2*Cc(:,17)+m3*Cc(:,18)+m4*Cc(:,19)+m5*Cc(:,20)+m6*Cc(:,21)+m7*Cc(:,22)+m8*Cc(:,23)+m9*Cc(:,24)+m10*Cc(:,25)+...
    m11*Cc(:,26)+m12*Cc(:,27)+bd*Cc(:,28))-phi.*(Pt_1-(b0*Cc_1(:,1)+bt*Cc_1(:,2)+gs1*Cc_1(:,3)+gc1*Cc_1(:,4)+gs2*Cc_1(:,5)+gc2*Cc_1(:,6)+gs3*Cc_1(:,7)+gc3*Cc_1(:,8)+...
    gs4*Cc_1(:,9)+gc4*Cc_1(:,10)+gs5*Cc_1(:,11)+gc5*Cc_1(:,12)+gs6*Cc_1(:,13)+gc6*Cc_1(:,14)+gs7*Cc_1(:,15)+gc7*Cc_1(:,16)+...
    m2*Cc_1(:,17)+m3*Cc_1(:,18)+m4*Cc_1(:,19)+m5*Cc_1(:,20)+m6*Cc_1(:,21)+m7*Cc_1(:,22)+m8*Cc_1(:,23)+m9*Cc_1(:,24)+m10*Cc_1(:,25)+...
    m11*Cc_1(:,26)+m12*Cc_1(:,27)+bd*Cc_1(:,28)))).^2)/(2.*sigmaSq)).* ...
    (1/sqrt(2.*pi.*sigmaSq))));
end