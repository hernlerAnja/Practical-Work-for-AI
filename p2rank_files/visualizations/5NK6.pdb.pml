
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5NK6.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5NK6.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [170,171,418,1196,1235,529,417,419,661,443,444,118,679,265,683,660,158,278,154,280,281,282,268,274,645,1270,1264,1265,1241,1266,1267,1269,123,125,128,129,155,114,115,1116,1117,1188,1189,1092,1190,1191,525,687,688,1195,1197,712,716,1078,709,686,1274,1275,1277] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [148,150,145,358,359,361,357,388,356,384,387,354,1234,1266,1267,1268,1269,1231,1233,154,281,282,286,143,152,153,296,394,389,392,129,155,141] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [507,508,907,911,917,918,938,903,498,868,869,870,871,1150,1142,1156,1161,1160,500,2209,2208,905] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2108,984,1501,1503,1505,1499,1507,1508,1511,1492,1495,1493,2060,1494,991,2119,983,1007,2105,2106,2107,2103] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [699,1132,1145,669,497,499,1176,541,540,666,674] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1386,1396,1399,1400,1423,1544,1799,1353,1769,1797,1798,1772,1776,1775,1774,1434,1802,1801,1805,1807] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1825,1826,1827,1792,1828,1830,1857,1712,1835,1829,1728,1729,1730,1689,1694] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        